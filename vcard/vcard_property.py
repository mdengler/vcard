class VcardProperty(object):
    def __init__(self, name):
        self.name = name
        self.parameters = None
        self.values = None

    def __str__(self):
        return "{}: parameters={}, values={}".format(
            self.name, self.parameters, self.values)

    def __repr__(self):
        return "{}(name={!r})".format(self.__class__.__name__, self.name)
