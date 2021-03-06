USE [msdb]
GO
EXEC msdb.dbo.sp_add_alert @name=N'AG replication suspended', 
		@message_id=976, 
		@severity=0, 
		@enabled=1, 
		@delay_between_responses=900, 
		@include_event_description_in=1, 
		@notification_message=N'AG replication has suspended on one or more databases on the PR-SQL-02\IRSQL02 instance.  Log in and restore replication.', 
		@job_id=N'00000000-0000-0000-0000-000000000000'
GO
EXEC msdb.dbo.sp_add_notification @alert_name=N'AG replication suspended', @operator_name=N'Admin', @notification_method = 1
GO
