DECLARE
     cursor user_roles_cursor is
               SELECT ROLE.ROLE
                                   FROM USER_ROLE,USER_INFO, ROLE
                                   WHERE USER_INFO.USER_ID = USER_ROLE.USER_INFO_USER_ID
                                   AND USER_ROLE.ROLE_ROLE_ID=ROLE.ROLE_ID 
                                   AND USER_INFO.USER_ID = 1;

     USERROLES ROLE.ROLE%TYPE;
BEGIN
     open user_roles_cursor;
          LOOP
               fetch user_roles_cursor into USERROLES;
               dbms_output.put_line(USERROLES);
               --VER

               EXIT when user_roles_cursor%notfound;
          END LOOP;
     close user_roles_cursor;
END;

/

SELECT USER_INFO.USER_NAME,USER_INFO.USER_ID,ROLE.ROLE_ID, ROLE.ROLE
FROM USER_ROLE,USER_INFO, ROLE
WHERE USER_INFO.USER_ID = USER_ROLE.USER_INFO_USER_ID
AND USER_ROLE.ROLE_ROLE_ID=ROLE.ROLE_ID ;


SELECT USER_INFO.USER_NAME,USER_INFO.USER_ID,ROLE.ROLE_ID, ROLE.ROLE
FROM USER_ROLE,USER_INFO, ROLE
WHERE USER_INFO.USER_ID = USER_ROLE.USER_INFO_USER_ID
AND USER_ROLE.ROLE_ROLE_ID=ROLE.ROLE_ID 
AND USER_INFO.USER_ID = 1;


SELECT *
FROM USER_ROLE,USER_INFO, ROLE
WHERE USER_INFO.USER_ID = USER_ROLE.USER_INFO_USER_ID
AND USER_ROLE.ROLE_ROLE_ID=ROLE.ROLE_ID ;