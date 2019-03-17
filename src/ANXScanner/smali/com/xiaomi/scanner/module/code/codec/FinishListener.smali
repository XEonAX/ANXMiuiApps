.class public final Lcom/xiaomi/scanner/module/code/codec/FinishListener;
.super Ljava/lang/Object;
.source "FinishListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private final activityToFinish:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activityToFinish"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/FinishListener;->activityToFinish:Landroid/app/Activity;

    .line 33
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/codec/FinishListener;->run()V

    .line 37
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/codec/FinishListener;->run()V

    .line 41
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/FinishListener;->activityToFinish:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 45
    return-void
.end method
