.class abstract Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
.super Ljava/lang/Object;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/BlendImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PorterDuffBlender"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/imagefilters/BlendImageFilter;

    .line 48
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blendFinal(II)I
.end method
