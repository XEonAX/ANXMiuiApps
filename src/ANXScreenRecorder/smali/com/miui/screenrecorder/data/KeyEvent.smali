.class public Lcom/miui/screenrecorder/data/KeyEvent;
.super Ljava/lang/Object;
.source "KeyEvent.java"


# static fields
.field public static final KEYCODE_APP_SWITCH:I = 0xbb

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_HOME:I = 0x3

.field public static final KEYCODE_MENU:I = 0x52

.field public static final KEYCODE_POWER:I = 0x1a

.field public static final KEYCODE_UNKNOWN:I = -0x1

.field public static final KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final KEYCODE_VOLUME_UP:I = 0x18


# instance fields
.field private mIsKeyDown:Z

.field private mKeycode:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "keycode"    # I
    .param p2, "isKeyDown"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/miui/screenrecorder/data/KeyEvent;->mKeycode:I

    .line 29
    iput-boolean p2, p0, Lcom/miui/screenrecorder/data/KeyEvent;->mIsKeyDown:Z

    .line 30
    return-void
.end method


# virtual methods
.method public IsKeyDown()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/miui/screenrecorder/data/KeyEvent;->mIsKeyDown:Z

    return v0
.end method

.method public getKeycode()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/screenrecorder/data/KeyEvent;->mKeycode:I

    return v0
.end method
