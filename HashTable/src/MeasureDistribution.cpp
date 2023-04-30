#include <assert.h>
#include <stdio.h>

#include "CommonEnums.h"
#include "LogMacroses.h"

#include "Tests.hpp"
#include "ProcessData.hpp"

const hash_func_ptr HASH_FUNCTIONS_TO_TEST[] = {  hash1_always_1,   hash2_ascii,   hash3_strlen,   hash4_hash_sum,   hash5_rol,   hash6_ror,   hash7_djb2,   hash8_crc32};
const char*         HASH_FUNCTIONS_NAMES[]   = { "hash1_always_1", "hash2_ascii", "hash3_strlen", "hash4_hash_sum", "hash5_rol", "hash6_ror", "hash7_djb2", "hash8_crc32"};

static_assert(sizeof(HASH_FUNCTIONS_TO_TEST) / sizeof(HASH_FUNCTIONS_TO_TEST[0]) 
              == 
              sizeof(HASH_FUNCTIONS_NAMES)   / sizeof(HASH_FUNCTIONS_NAMES[0]));

const int NUMBER_OF_HASH_FUNCTIONS_TO_TEST = sizeof(HASH_FUNCTIONS_TO_TEST) / sizeof(HASH_FUNCTIONS_TO_TEST[0]);


static int MesureHashFunctionDistribution (HashTable* table, const processed_data* src_data, 
                                           const hash_func_ptr func, const char* function_name, 
                                           FILE* file);

int TestHashFunctionsDistribution (const char* path_to_src_data, 
                                   const char* path_to_file_where_store_results)
    {
    assert(path_to_src_data);
    assert(path_to_file_where_store_results);
    
    processed_data ready_data {};

    if (ProcessedDataCtor (&ready_data, path_to_src_data) != SUCCESS)
        {
        report ("Couldn't get data from '%s'\n", path_to_src_data);
        return FAILURE;
        }
    
    FILE* results_file = fopen (path_to_file_where_store_results, "wb");
    if (!results_file)
        {
        report ("Couldn't open file '%s'\n", path_to_file_where_store_results);
        return FAILURE;
        }
    
    HashTable table{};
    
    for (int i = 0; i < NUMBER_OF_HASH_FUNCTIONS_TO_TEST; i++)
        {
        hash_func_ptr func    = HASH_FUNCTIONS_TO_TEST[i];
        const char* func_name = HASH_FUNCTIONS_NAMES[i];

        if (MesureHashFunctionDistribution (&table, &ready_data, func, func_name, results_file) != SUCCESS)
            report ("Couldn't measure '%s' function\n", func_name);
        }

    ProcessedDataDtor (&ready_data);

    return SUCCESS;
    }

static int MesureHashFunctionDistribution (HashTable* table, const processed_data* src_data, const hash_func_ptr func, const char* function_name, FILE* file)
    {
    assert(table);
    assert(src_data);
    assert(func);
    assert(function_name);
    assert(file);
    
    if (SetHashTable (table, src_data, func) != SUCCESS)
        {
        report ("Couldn't set HashTable with function '%s'\n", function_name);
        return  FAILURE;
        }
    
    fprintf(file, "%s", function_name);

    for (size_t i = 0; i < table->number_of_lists; i++)
        {
        List* list = table->list_array + i;
        fprintf(file, " %c%lu", NUMBERS_SEPARATOR, list->number_of_elements);
        }

    fprintf(file, "\n");
    
    DumpHashTable( table, "DUMP.txt");
    DeleteHashTable (table);
    return SUCCESS;
    }
