[
    {pool, [{size, 20},
            {worker_type, dummy_worker}], [
        {wait, {1, sec}},
        {print, "C!"},
        {set_signal, "A", 9},
        {wait, {1, sec}}]},
    {pool, [{size, 1},
            {worker_type, dummy_worker}], [
        {wait_signal, "A", 200, {9, sec}},
        {print, "E!"}]}
].
