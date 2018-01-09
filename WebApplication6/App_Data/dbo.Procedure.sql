CREATE PROCEDURE [dbo].[Insert_User]
      @username VARCHAR (50),
      @password VARCHAR (50)
      
AS
BEGIN
      SET NOCOUNT ON;
      IF EXISTS(SELECT UserId FROM users_table WHERE username = @username)
      BEGIN
            SELECT -1 -- Username exists.
      END
      ELSE
      BEGIN
            INSERT INTO [users_table]
                     ([username]
                     ,[password])
                   
            VALUES
                     (@username
                     ,@password)
           
            SELECT SCOPE_IDENTITY() -- UserId                 
     END
END