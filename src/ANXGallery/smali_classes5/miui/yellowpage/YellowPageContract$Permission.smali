.class public final Lmiui/yellowpage/YellowPageContract$Permission;
.super Ljava/lang/Object;
.source "YellowPageContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Permission"
.end annotation


# static fields
.field public static final ALLOW:I = 0x3

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "permission"

.field public static final HOST:Ljava/lang/String; = "host"

.field public static final PERMISSION:Ljava/lang/String; = "permission"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 536
    const-string v0, "content://miui.yellowpage/permission"

    .line 537
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$Permission;->CONTENT_URI:Landroid/net/Uri;

    .line 536
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
