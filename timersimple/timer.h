#ifndef TIMER_H
#define TIMER_H

#include <thread>
#include <chrono>
#include <functional>
#include <future>
#include <cstdio>
#include <iostream>

class Timer
{
    public:

        Timer(){};

        template <class callable>        
        void connect(callable&& f)
        {
			std::thread([=]() 
            {
                while(true)
                {
					if(go.load())
						std::invoke(f);
                    std::this_thread::sleep_for(std::chrono::milliseconds(period.load()));
                }
            }).detach();
        };
        
        void start(int p)
        {
			period.store(p);

			go.store(true);
        };
        
        void stop() { go.store(!go); };
        /*setPeriod:
         * Pone el valor del periodo que indique el parametro p */
		void setPeriod(int p) { period.store(p) ;};
        /* getPeriod:
         * Devuelve el Periodo actual en forma de entero*/
        std::atomic_int getPeriod() {
            int a=period.load();
            return a;

        };
        
    private:
        std::atomic_bool go = false;
		std::atomic_int period = 0;
        std::atomic_int periodLong = 0;
        
    
};

#endif // TIMER_H
