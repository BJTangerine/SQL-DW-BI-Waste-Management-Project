-- queries on this table resulting in 'Operation not allowed for reason code "1" on table ..'.
SELECT * FROM facttrips;

-- get explanation:
SET INTEGRITY FOR ccp43946.facttrips IMMEDIATE CHECKED;
-- "found an integrity violation involving a constraint, a unique index, a generated column, or an index over an XML column. The associated object is identified by "S1.T1.SQL131001102018230" .."


-- verifies the type of constraint and if it is enforced:
SELECT 
	TYPE, 
	ENFORCED 

FROM SYSCAT.TABCONST 

WHERE CONSTNAME='SQL220608222125340';
-- contraint is an enforced foreign key.
