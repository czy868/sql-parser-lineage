WITH BODY AS (
    SELECT TA.AA,
           TB.CC
    FROM DIM.ROWNUMBER_INFO AS TA
             LEFT JOIN DWS.CONSUMER_INFO AS TB
                       ON TA.A = TB.B AND TA.C = '1' AND TB.D = 'AAAAA')
INSERT OVERWRITE TABLE DM.DM_TRAFFIC_CHANNEL_MAIN_1D_DI PARTITION (SDT)
SELECT AA, CC
FROM BODY AS W