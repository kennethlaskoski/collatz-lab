pub const ComputationError = error {
    IllegalArgument,
};

fn isEven(number: usize) bool {
    return (number & 1 == 0);
}

pub fn steps(number: usize) anyerror!usize {
    if (number < 1) {
        return error.IllegalArgument;
    }

    var n = number;
    var i: usize = 0;
    while (n > 1) {
        i += 1;
        if (isEven(n)) {
            n /= 2;
        } else {
            n *= 3;
            n += 1;
        }
    }
    return i;
}
