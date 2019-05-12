class Tape(object):
    def __init__(self, left, middle, right, blank):
        self.left = left
        self.middle = middle
        self.right = right
        self.blank = blank

    def __str__(self):
        left = ''.join(self.left)
        middle = self.middle
        right = ''.join(self.right)
        return '#<Tape {left}({middle}){right}>'.format(**locals())

    def write(self, character):
        return Tape(self.left, character, self.right, self.blank)

    @property
    def move_head_left(self):
        left = [] if not self.left else self.left[0:-1]
        middle = self.blank if not self.left else self.left[-1]
        right = self.right + [self.middle]
        return Tape(left, middle, right, self.blank)

    @property
    def move_head_right(self):
        left = self.left + [self.middle]
        middle = self.blank if not self.right else self.right[0]
        right = [] if not self.right else self.right[1:]
        return Tape(left, middle, right, self.blank)

    __repr__ = __str__


tape = Tape(['1', '0', '1'], '1', [], '_')
print(tape)
print(tape.move_head_left)
print(tape.write('0'))
print(tape.move_head_right)
print(tape.move_head_right.write('0'))