.class public Lcom/xiaomi/mistatistic/sdk/b$a;
.super Ljava/lang/Object;
.source "MIStatsExceptionHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Throwable;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    .line 157
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->b:Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->c:Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->d:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->e:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    .line 149
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->b:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->c:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->d:Ljava/lang/String;

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->e:Ljava/lang/String;

    .line 153
    return-void
.end method
