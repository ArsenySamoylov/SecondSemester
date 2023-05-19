#include <assert.h>
#include <stdio.h>
#include <stddef.h> 

#include "DebugIR.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "EasyDebug.h"

static unsigned  INDENT = 0;
static FILE* DUMP_FILE = NULL;

#define increase_indent() ++INDENT;
#define decrease_indent() --INDENT;

#define print(format, ...)                          \
    do                                              \
    {                                               \
    for(unsigned i = 0; i < INDENT; i++)            \
        fprintf(DUMP_FILE, "\t");                   \
                                                    \
    fprintf(DUMP_FILE, format __VA_OPT__(,) __VA_ARGS__);      \
    }while(0);

#define print_ni(format, ...) fprintf(DUMP_FILE, format __VA_OPT__(,) __VA_ARGS__)

static int DumpGlobalVars (const ValueArr* global_vars);
static int DumpGlobalVar  (const GlobalVar* var);

static int DumpFunctions  (const ValueArr* functions);
static int DumpFunction   (const Function* function);
static int DumpParameters (const ValueArr* argv);

static int DumpBaseBlock  (const BaseBlock* block);
static int DumpInstruction (const Instruction* instr);
static int PrintName (const Value* val);

static int PrintFullType (const Value* val);
static int PrintOperator (const Operator* op);

int DumpIR (const Module* mod, const char* out_file)
    {
    assert(mod);
    assert(out_file);

    DUMP_FILE = fopen (out_file, "w");
    if (!DUMP_FILE)
        {
        report("Can't open file '%s'\n", out_file);
        return FAILURE;
        }

    setvbuf(DUMP_FILE, NULL, _IONBF, 0);

    DumpGlobalVars (&mod->global_vars);
    DumpFunctions  (&mod->functions);

    fclose(DUMP_FILE);
    DUMP_FILE = NULL;

    return SUCCESS;
    }

static int DumpGlobalVars (const ValueArr* global_vars)
    {
    assert(global_vars);

    for (size_t i = 0; i < global_vars->size; i++)
        DumpGlobalVar ( (const GlobalVar*) global_vars->arr[i]);

    return SUCCESS;
    }

static int DumpGlobalVar  (const GlobalVar* var)
    {
    assert(var);

    print("var %s = ", var->name);

    if (var->init_val)
        print_ni("%lg\n", var->init_val->data);
    else
        print_ni("NILL\n");

    return SUCCESS;
    }

static int DumpFunctions  (const ValueArr* functions)
    {
    assert(functions);

    for (size_t i = 0; i < functions->size; i++)
        DumpFunction ( (const Function*) (functions->arr[i]));

    return SUCCESS;
    }
    
static int DumpFunction (const Function* function)
    {
    assert(function);

    print ("Func %s: ", function->name);
    DumpParameters (&function->argv);

    increase_indent();
    
    const ValueArr* body = &function->body;
    for (size_t i = 0; i < body->size; i++)
        DumpBaseBlock ( (const BaseBlock*) body->arr[i]);

    decrease_indent();
    return SUCCESS;
    }

static int DumpParameters (const ValueArr* argv)
    {
    assert(argv);

    print_ni("(");

    for (size_t i = 0; i < argv->size; i++)
        print_ni("param %s ", argv->arr[i]->name);

    print_ni(")\n");
    return SUCCESS;
    }

static int DumpBaseBlock  (const BaseBlock* block)
    {
    assert(block);

    print("Block:::: %s ::::, (size %lu)\n", block->name, block->inst_arr.size);

    const ValueArr* inst_arr = &block->inst_arr;

    for (size_t i = 0; i < inst_arr->size; i++)
        DumpInstruction ( (const Instruction*) inst_arr->arr[i]);

    return SUCCESS;
    }

static int DumpInstruction (const Instruction* instr)
    {
    assert(instr);

    switch (instr->Instruction::type)
        {
        case InstructionType::Store:
                            print ("store(%s) = ", instr->name);
                            PrintName(((const Store*) instr) ->val);
                            print_ni("\n");

                            return SUCCESS; 
                            
        case InstructionType::Load:
                            print     ("load(%s) = dest: ", instr->name);
                            PrintName (((const Load*) instr) ->dest);
                            print_ni  (", src: ");
                            PrintName (((const Load*) instr) ->src);

                            print_ni ("\n");
                            return SUCCESS;

        case InstructionType::Operator:
                            print         (""); // to set indent
                            PrintOperator ((const Operator*) instr);
                            print_ni      (" left: ");
                            PrintName     (((const Operator*) instr) ->left_op);

                            print_ni  (", right: ");
                            PrintName (((const Operator*) instr)     ->right_op);

                            print_ni ("\n");
                            return SUCCESS;

        case InstructionType::Branch:
                            print("branch: ");

                            print_ni  (" than: ");
                            PrintName (((const Branch*) instr)   ->true_block);
                            print_ni  (", else: ");
                            PrintName (((const Branch*) instr) ->false_block);

                            print_ni("\n");
                            return SUCCESS;

        case InstructionType::Call:
                            print     ("call: ");
                            PrintName (((const Call*) instr) ->function);
                            
                            DumpParameters (&(((const Call*) instr) ->argv));

                            print_ni ("\n");
                            return SUCCESS;

        case InstructionType::Return: 
                            print     ("return ");
                            PrintName (((const Return*) instr) ->value);

                            print_ni ("\n");
                            return  SUCCESS;

        default:
            report ("Unkown Instruction type\n");
            break;
        }

    return FAILURE;
    }

static int PrintName (const Value* val)
    {
    // assert(val);
    if (!val)
        {
        print_ni (" 'nil' ");
        return SUCCESS;
        }
        
    PrintFullType(val);

    if (val->name)
        print_ni (" '%s' ", val->name);
    else
        print_ni (" 'nil' ");

    return SUCCESS;
    }

static int PrintFullType (const Value* val)
    {
    assert(val);

    print_ni("(");

    switch (val->type)
        {

        case ValueType::Function:   print_ni ("Function"); break;
        case ValueType::GlobalVar:  print_ni ("GlobalVar"); break;
        case ValueType::BaseBlock:  print_ni ("BaseBlock"); break;
        case ValueType::Constant:   print_ni ("Constant"); break;

        case ValueType::Instruction:
            print_ni ("Instruction::"); 

            switch (((const Instruction*) val) ->Instruction::type)
                {
                case InstructionType::Store:
                                    print_ni ("Store");
                                    break;

                case InstructionType::Load:
                                    print_ni ("Load");
                                    break;

                case InstructionType::Operator:
                                    print_ni ("Operator::");

                                    PrintOperator((const Operator*) val);
                                    break;

                case InstructionType::Branch:
                                    print_ni ("Branch");
                                    break;

                case InstructionType::Call:
                                    print_ni ("Call");
                                    break;

                case InstructionType::Return: 
                                    print_ni ("Return");
                                    break;

                default:
                    report("Unkown Instruction type\n");
                    break;
                }

              break;
        
        default:
            report ("Wrong ValueType\n");
            return FAILURE;
        }
        
    print_ni(")");
    return SUCCESS;
    }

static int PrintOperator (const Operator* op)
    {
    assert(op);

    switch(op->Operator::type)
        {
        case OperatorType::Add: print_ni ("Add"); return SUCCESS;
        case OperatorType::Sub: print_ni ("Sub"); return SUCCESS;
        case OperatorType::Mul: print_ni ("Mul"); return SUCCESS;
        case OperatorType::Div: print_ni ("Div"); return SUCCESS;

        case OperatorType::Unknown: 
        default:
            print_ni ("Unknown"); 
            break;
        }

    return FAILURE;
    }

int PrintValue (const Value* val)
    {
    assert(val);

    FILE* temp = DUMP_FILE;

    DUMP_FILE = stdout;
    setvbuf(DUMP_FILE, NULL, _IONBF, 0);
    
    print ("Value %p:", val);
    PrintName (val);
    print_ni ("\n");

    DUMP_FILE = temp;

    return SUCCESS;
    }