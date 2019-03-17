.class public Lcom/miui/gallery/search/SearchContract;
.super Ljava/lang/Object;
.source "SearchContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/SearchContract$Icon;,
        Lcom/miui/gallery/search/SearchContract$History;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "content://com.miui.gallery.search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/search/SearchContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method
