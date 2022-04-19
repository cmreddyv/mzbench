[ % the simplest example
    {pool, [{size, 3}, % three execution "threads"
            {worker_type, dummy_worker}],
        [{loop, [{time, {5, min}}, % total loop time
                    {rate, {1, rps}}], % one rps for every worker, 3 rps totally
                [{print, "FOO"}]}]} % this operation prints "FOO" to console
].
