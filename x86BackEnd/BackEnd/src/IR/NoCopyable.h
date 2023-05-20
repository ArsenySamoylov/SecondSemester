#pragma once

struct NoCopyable
    {
    public:

             NoCopyable () = default;
    virtual ~NoCopyable () = default;

    NoCopyable& operator = (const NoCopyable&) = delete;
    NoCopyable& operator = (const NoCopyable&&)  = delete;

    NoCopyable (const NoCopyable&)   = delete;
    NoCopyable (const NoCopyable&&)  = delete;
    };