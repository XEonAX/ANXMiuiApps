.class public Lcom/miui/gallery/util/deprecated/Time;
.super Ljava/lang/Object;
.source "Time.java"


# direct methods
.method public static getUpgradeMixedDateTimeSqlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 10
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, " update  %1$s set %2$s =  coalesce(    strftime(        \'%%s000\',        (            replace(%3$s,\':\',\'-\')||\' \'||            case when substr(%4$s,2,1)=\':\'                then 0|| substr(%4$s,1,1)||\':\'||                    (case when substr(%4$s, 4,1)=\':\'                        then 0|| substr(substr(%4$s,3),1,1) ||\':\'||                            (case when length(substr(%4$s,5))=1                                then 0|| substr(%4$s,5)                                ELSE substr(%4$s,5)                            END)                        ELSE substr(substr(%4$s,3),1,2)||\':\'||                            (case when length(substr(%4$s,6))=1                                then 0|| substr(%4$s,6)                                ELSE substr(%4$s,6)                            END)                        END)                ELSE  substr(%4$s,1,2) ||\':\'||                    (case when substr(%4$s, 5,1)=\':\'                        then 0|| substr(substr(%4$s,4),1,1) ||\':\'||                            (case when length(substr(%4$s,6))=1                                then 0|| substr(%4$s,6)                                ELSE substr(%4$s,6)                            END)                        ELSE substr(substr(%4$s,4),1,2)||\':\'||                            (case when length(substr(%4$s,7))=1                                then 0|| substr(%4$s,7)                                ELSE substr(%4$s,7)                            END)                        END)            END        )    ),    strftime(        \'%%s000\',        (            replace(substr(%5$s,1,10),\':\',\'-\') || \' \' ||substr(%5$s,12,8)        )    )-%7$s,    %6$s  ) "

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const-string v5, "mixedDateTime"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "exifGPSDateStamp"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "exifGPSTimeStamp"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "exifDateTime"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "dateModified"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 63
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 10
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "sqlConvertDateTime":Ljava/lang/String;
    return-object v0
.end method
