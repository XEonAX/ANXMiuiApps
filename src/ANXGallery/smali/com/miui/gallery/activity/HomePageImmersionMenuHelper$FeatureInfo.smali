.class Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;
.super Ljava/lang/Object;
.source "HomePageImmersionMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureInfo"
.end annotation


# instance fields
.field public mFeatureName:Ljava/lang/String;

.field private mIsPushValid:Z

.field private mIsUpdate:Z

.field final synthetic this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;Ljava/lang/String;ZZ)V
    .locals 3
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "isUpdate"    # Z
    .param p4, "isPushValid"    # Z

    .prologue
    .line 345
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->mFeatureName:Ljava/lang/String;

    .line 347
    iput-boolean p3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->mIsUpdate:Z

    .line 348
    iput-boolean p4, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->mIsPushValid:Z

    .line 350
    invoke-static {p2}, Lcom/miui/gallery/preference/GalleryPreferences$FeatureRedDot;->isUpdateFeatureStated(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 352
    .local v0, "param":Ljava/util/Map;
    const-string v1, "featureName"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v1, "feature_red_dot"

    const-string v2, "new_feature"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 355
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/miui/gallery/preference/GalleryPreferences$FeatureRedDot;->setUpdateFeatureStated(Ljava/lang/String;Z)V

    .line 357
    .end local v0    # "param":Ljava/util/Map;
    :cond_0
    return-void
.end method


# virtual methods
.method public needRedDot()Z
    .locals 4

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->mIsUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->mFeatureName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$FeatureRedDot;->hasUpdateFeatureUsed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->mIsPushValid:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->mFeatureName:Ljava/lang/String;

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/GalleryPreferences$FeatureRedDot;->isFeatureRedDotValid(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFeatureUsed()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 360
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->mFeatureName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/GalleryPreferences$FeatureRedDot;->setUpdateFeatureUsed(Ljava/lang/String;Z)V

    .line 361
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->mFeatureName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/GalleryPreferences$FeatureRedDot;->isFeatureRedDotValid(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->mFeatureName:Ljava/lang/String;

    invoke-static {v0, v4, v5, v4, v5}, Lcom/miui/gallery/preference/GalleryPreferences$FeatureRedDot;->setFeatureRedDotValidTime(Ljava/lang/String;JJ)V

    .line 364
    :cond_0
    return-void
.end method
