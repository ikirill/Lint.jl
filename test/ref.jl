s = """
r = [3,2,1]
r[r]
"""
msgs = lintstr( s )
@test( contains( msgs[1].message, "Value at position #1 is the referenced" ) )

s = """
r = [3,2,1]
r[1;r]
"""
msgs = lintstr( s )
@test( contains( msgs[1].message, "Value at position #2 is the referenced" ) )
