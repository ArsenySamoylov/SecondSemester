#pragma once

typedef unsigned char byte;

struct Buffer
    {
    byte* buffer;
    
    size_t current_size;
    size_t max_size;
    };



int BufferCtor (Buffer* buf);
int BufferDtor (Buffer* buf);

int CopyToBuff (Buffer* buf, size_t offset, void* src, size_t size);