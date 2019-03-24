.class public interface abstract Lmiui/yellowpage/YellowPageContract$Location;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Location"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "current_location"

.field public static final LOCATION_ID:Ljava/lang/String; = "location_id"

.field public static final LOCATION_NAME:Ljava/lang/String; = "location_name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 507
    const-string v0, "content://miui.yellowpage/current_location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$Location;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
