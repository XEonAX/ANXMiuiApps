.class final Lcom/alibaba/fastjson/asm/TypeCollector$1;
.super Ljava/util/HashMap;
.source "TypeCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/asm/TypeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string v0, "int"

    const-string v1, "I"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v0, "boolean"

    const-string v1, "Z"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v0, "byte"

    const-string v1, "B"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v0, "char"

    const-string v1, "C"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v0, "short"

    const-string v1, "S"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v0, "float"

    const-string v1, "F"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v0, "long"

    const-string v1, "J"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v0, "double"

    const-string v1, "D"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method
