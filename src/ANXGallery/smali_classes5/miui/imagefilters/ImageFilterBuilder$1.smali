.class Lmiui/imagefilters/ImageFilterBuilder$1;
.super Lmiui/imagefilters/ImageFilterBuilder$ParamData;
.source "ImageFilterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/ImageFilterBuilder;->addParam(Ljava/lang/String;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/ImageFilterBuilder;

.field final synthetic val$allowIgnore:Z

.field final synthetic val$paramName:Ljava/lang/String;

.field final synthetic val$paramValues:Ljava/util/List;


# direct methods
.method constructor <init>(Lmiui/imagefilters/ImageFilterBuilder;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lmiui/imagefilters/ImageFilterBuilder;

    .line 37
    iput-object p1, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->this$0:Lmiui/imagefilters/ImageFilterBuilder;

    iput-object p2, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->val$paramName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->val$paramValues:Ljava/util/List;

    iput-boolean p4, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->val$allowIgnore:Z

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lmiui/imagefilters/ImageFilterBuilder$ParamData;-><init>(Lmiui/imagefilters/ImageFilterBuilder$1;)V

    .line 38
    iget-object p2, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->val$paramName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->mParamName:Ljava/lang/String;

    .line 39
    iget-object p2, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->val$paramValues:Ljava/util/List;

    iput-object p2, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->mParamValues:Ljava/util/List;

    .line 40
    iget-boolean p2, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->val$allowIgnore:Z

    iput-boolean p2, p0, Lmiui/imagefilters/ImageFilterBuilder$1;->mIgnoreWhenNotSupported:Z

    .line 41
    return-void
.end method
