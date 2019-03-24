.class public interface abstract Lmiui/yellowpage/YellowPageContract$T9Lookup;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "T9Lookup"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREDIT_IMG:Ljava/lang/String; = "credit_img"

.field public static final DIRECTORY:Ljava/lang/String; = "t9_lookup"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PINYIN:Ljava/lang/String; = "pinyin"

.field public static final T9_RANK:Ljava/lang/String; = "t9_rank"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final YID:Ljava/lang/String; = "yid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "content://miui.yellowpage//t9_lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$T9Lookup;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
