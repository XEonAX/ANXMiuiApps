.class public Lcom/xiaomi/scanner/bean/BusinessClickBean;
.super Ljava/lang/Object;
.source "BusinessClickBean.java"


# instance fields
.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/xiaomi/scanner/bean/BusinessClickBean;->type:I

    .line 13
    iput-object p2, p0, Lcom/xiaomi/scanner/bean/BusinessClickBean;->text:Ljava/lang/String;

    .line 14
    return-void
.end method
