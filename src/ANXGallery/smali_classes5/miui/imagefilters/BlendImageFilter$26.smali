.class Lmiui/imagefilters/BlendImageFilter$26;
.super Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/BlendImageFilter;->getCurrentPorterDuffBlender()Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/imagefilters/BlendImageFilter;

    .line 545
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$26;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendAlpha(FF)F
    .locals 1
    .param p1, "Da"    # F
    .param p2, "Sa"    # F

    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public blendChannel(FFFF)F
    .locals 1
    .param p1, "Dc"    # F
    .param p2, "Sc"    # F
    .param p3, "Da"    # F
    .param p4, "Sa"    # F

    .line 551
    const/4 v0, 0x0

    return v0
.end method
