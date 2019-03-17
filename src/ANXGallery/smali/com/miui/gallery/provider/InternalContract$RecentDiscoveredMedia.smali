.class public interface abstract Lcom/miui/gallery/provider/InternalContract$RecentDiscoveredMedia;
.super Ljava/lang/Object;
.source "InternalContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/InternalContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecentDiscoveredMedia"
.end annotation


# static fields
.field public static final ALIAS_CLEAR_THUMBNAIL:Ljava/lang/String;

.field public static final ALIAS_MICRO_THUMBNAIL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_SIZE_FIRST:Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/provider/InternalContract$RecentDiscoveredMedia;->ALIAS_MICRO_THUMBNAIL:Ljava/lang/String;

    .line 257
    sget-object v0, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_CLEAR_FIRST:Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/provider/InternalContract$RecentDiscoveredMedia;->ALIAS_CLEAR_THUMBNAIL:Ljava/lang/String;

    return-void
.end method
