.class public Lcom/alibaba/fastjson/serializer/ClobSeriliazer;
.super Ljava/lang/Object;
.source "ClobSeriliazer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 11
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    if-nez p2, :cond_0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 46
    :goto_0
    return-void

    .line 22
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/sql/Clob;

    move-object v3, v0

    .line 23
    .local v3, "clob":Ljava/sql/Clob;
    invoke-interface {v3}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v7

    .line 25
    .local v7, "reader":Ljava/io/Reader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/16 v9, 0x800

    :try_start_1
    new-array v2, v9, [C

    .line 30
    .local v2, "chars":[C
    :goto_1
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v7, v2, v9, v10}, Ljava/io/Reader;->read([CII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 31
    .local v6, "len":I
    if-gez v6, :cond_1

    .line 40
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, "text":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/Reader;->close()V

    .line 42
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 43
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "chars":[C
    .end local v3    # "clob":Ljava/sql/Clob;
    .end local v6    # "len":I
    .end local v7    # "reader":Ljava/io/Reader;
    .end local v8    # "text":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 44
    .local v4, "e":Ljava/sql/SQLException;
    new-instance v9, Ljava/io/IOException;

    const-string v10, "write clob error"

    invoke-direct {v9, v10, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 34
    .end local v4    # "e":Ljava/sql/SQLException;
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    .restart local v2    # "chars":[C
    .restart local v3    # "clob":Ljava/sql/Clob;
    .restart local v6    # "len":I
    .restart local v7    # "reader":Ljava/io/Reader;
    :cond_1
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v1, v2, v9, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 36
    .end local v2    # "chars":[C
    .end local v6    # "len":I
    :catch_1
    move-exception v5

    .line 37
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_4
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string v10, "read string from reader error"

    invoke-direct {v9, v10, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
.end method
