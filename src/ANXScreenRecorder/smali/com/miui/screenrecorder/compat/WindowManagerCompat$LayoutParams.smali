.class public Lcom/miui/screenrecorder/compat/WindowManagerCompat$LayoutParams;
.super Ljava/lang/Object;
.source "WindowManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/compat/WindowManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutParams"
.end annotation


# static fields
.field public static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/compat/WindowManagerCompat;


# direct methods
.method public constructor <init>(Lcom/miui/screenrecorder/compat/WindowManagerCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/compat/WindowManagerCompat;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/miui/screenrecorder/compat/WindowManagerCompat$LayoutParams;->this$0:Lcom/miui/screenrecorder/compat/WindowManagerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
