.class public Lcom/miui/screenrecorder/compat/SettingsCompat$System;
.super Ljava/lang/Object;
.source "SettingsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/compat/SettingsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "System"
.end annotation


# static fields
.field public static final SHOW_TOUCHES:Ljava/lang/String; = "show_touches"


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/compat/SettingsCompat;


# direct methods
.method public constructor <init>(Lcom/miui/screenrecorder/compat/SettingsCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/compat/SettingsCompat;

    .prologue
    .line 4
    iput-object p1, p0, Lcom/miui/screenrecorder/compat/SettingsCompat$System;->this$0:Lcom/miui/screenrecorder/compat/SettingsCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
