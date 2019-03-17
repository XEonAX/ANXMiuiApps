.class public Lcom/xiaomi/smack/packet/IQ$Type;
.super Ljava/lang/Object;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smack/packet/IQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final COMMAND:Lcom/xiaomi/smack/packet/IQ$Type;

.field public static final ERROR:Lcom/xiaomi/smack/packet/IQ$Type;

.field public static final GET:Lcom/xiaomi/smack/packet/IQ$Type;

.field public static final RESULT:Lcom/xiaomi/smack/packet/IQ$Type;

.field public static final SET:Lcom/xiaomi/smack/packet/IQ$Type;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/xiaomi/smack/packet/IQ$Type;

    const-string v1, "get"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->GET:Lcom/xiaomi/smack/packet/IQ$Type;

    .line 257
    new-instance v0, Lcom/xiaomi/smack/packet/IQ$Type;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->SET:Lcom/xiaomi/smack/packet/IQ$Type;

    .line 259
    new-instance v0, Lcom/xiaomi/smack/packet/IQ$Type;

    const-string v1, "result"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->RESULT:Lcom/xiaomi/smack/packet/IQ$Type;

    .line 261
    new-instance v0, Lcom/xiaomi/smack/packet/IQ$Type;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->ERROR:Lcom/xiaomi/smack/packet/IQ$Type;

    .line 263
    new-instance v0, Lcom/xiaomi/smack/packet/IQ$Type;

    const-string v1, "command"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->COMMAND:Lcom/xiaomi/smack/packet/IQ$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/xiaomi/smack/packet/IQ$Type;->value:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/xiaomi/smack/packet/IQ$Type;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 274
    if-nez p0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-object v0

    .line 277
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 278
    sget-object v1, Lcom/xiaomi/smack/packet/IQ$Type;->GET:Lcom/xiaomi/smack/packet/IQ$Type;

    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    sget-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->GET:Lcom/xiaomi/smack/packet/IQ$Type;

    goto :goto_0

    .line 280
    :cond_2
    sget-object v1, Lcom/xiaomi/smack/packet/IQ$Type;->SET:Lcom/xiaomi/smack/packet/IQ$Type;

    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 281
    sget-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->SET:Lcom/xiaomi/smack/packet/IQ$Type;

    goto :goto_0

    .line 282
    :cond_3
    sget-object v1, Lcom/xiaomi/smack/packet/IQ$Type;->ERROR:Lcom/xiaomi/smack/packet/IQ$Type;

    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    sget-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->ERROR:Lcom/xiaomi/smack/packet/IQ$Type;

    goto :goto_0

    .line 284
    :cond_4
    sget-object v1, Lcom/xiaomi/smack/packet/IQ$Type;->RESULT:Lcom/xiaomi/smack/packet/IQ$Type;

    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 285
    sget-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->RESULT:Lcom/xiaomi/smack/packet/IQ$Type;

    goto :goto_0

    .line 286
    :cond_5
    sget-object v1, Lcom/xiaomi/smack/packet/IQ$Type;->COMMAND:Lcom/xiaomi/smack/packet/IQ$Type;

    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    sget-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->COMMAND:Lcom/xiaomi/smack/packet/IQ$Type;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/xiaomi/smack/packet/IQ$Type;->value:Ljava/lang/String;

    return-object v0
.end method
