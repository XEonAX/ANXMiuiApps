.class public Lmiui/provider/Notes;
.super Ljava/lang/Object;
.source "Notes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/Notes$Utils;,
        Lmiui/provider/Notes$Intents;,
        Lmiui/provider/Notes$Account;,
        Lmiui/provider/Notes$CallData;,
        Lmiui/provider/Notes$TextData;,
        Lmiui/provider/Notes$Data;,
        Lmiui/provider/Notes$Note;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "notes"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field private static final NOTES_PACKAGE_NAME:Ljava/lang/String; = "com.miui.notes"

.field private static final TAG:Ljava/lang/String; = "Notes"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendSyncAdapterFlag(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 50
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 50
    return-object v0
.end method
