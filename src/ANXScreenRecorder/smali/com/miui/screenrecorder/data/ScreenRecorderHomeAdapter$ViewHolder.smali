.class Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ScreenRecorderHomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field discriptView:Landroid/view/View;

.field name:Landroid/widget/TextView;

.field playImage:Landroid/widget/ImageView;

.field selectImage:Landroid/widget/ImageView;

.field size:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

.field thumbnail:Landroid/widget/ImageView;

.field time:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->this$0:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;
    .param p2, "x1"    # Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$1;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;-><init>(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;)V

    return-void
.end method
