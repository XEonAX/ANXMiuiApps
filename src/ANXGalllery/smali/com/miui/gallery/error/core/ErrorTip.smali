.class public abstract Lcom/miui/gallery/error/core/ErrorTip;
.super Ljava/lang/Object;
.source "ErrorTip.java"


# instance fields
.field protected final mCode:Lcom/miui/gallery/error/core/ErrorCode;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 0
    .param p1, "mCode"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/gallery/error/core/ErrorTip;->mCode:Lcom/miui/gallery/error/core/ErrorCode;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract action(Landroid/content/Context;Lcom/miui/gallery/error/core/ErrorActionCallback;)V
.end method

.method public abstract getActionStr(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public getCode()Lcom/miui/gallery/error/core/ErrorCode;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/gallery/error/core/ErrorTip;->mCode:Lcom/miui/gallery/error/core/ErrorCode;

    return-object v0
.end method

.method public abstract getMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method
