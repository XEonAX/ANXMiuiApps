.class Lmiui/imagefilters/BlendImageFilter$37;
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

    .line 655
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$37;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendAlpha(FF)F
    .locals 2
    .param p1, "Da"    # F
    .param p2, "Sa"    # F

    .line 657
    add-float v0, p2, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public blendChannel(FFFF)F
    .locals 2
    .param p1, "Dc"    # F
    .param p2, "Sc"    # F
    .param p3, "Da"    # F
    .param p4, "Sa"    # F

    .line 661
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p3

    mul-float/2addr v1, p2

    sub-float/2addr v0, p4

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    return v1
.end method
