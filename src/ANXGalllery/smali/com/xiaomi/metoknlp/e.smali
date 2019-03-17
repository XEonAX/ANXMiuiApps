.class Lcom/xiaomi/metoknlp/e;
.super Ljava/lang/Object;
.source "MetokService.java"

# interfaces
.implements Lcom/xiaomi/metoknlp/f;


# instance fields
.field final synthetic R:Lcom/xiaomi/metoknlp/c;


# direct methods
.method private constructor <init>(Lcom/xiaomi/metoknlp/c;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/xiaomi/metoknlp/e;->R:Lcom/xiaomi/metoknlp/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/metoknlp/c;Lcom/xiaomi/metoknlp/d;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/xiaomi/metoknlp/e;-><init>(Lcom/xiaomi/metoknlp/c;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/metoknlp/e;->R:Lcom/xiaomi/metoknlp/c;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c;->J()V

    .line 92
    return-void
.end method
