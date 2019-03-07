.class public Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;
.super Lmiui/app/AlertDialog;
.source "ScreenRecordAlertDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 18
    return-void
.end method
