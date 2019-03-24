.class public Lmiui/provider/Notes$Intents;
.super Ljava/lang/Object;
.source "Notes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intents"
.end annotation


# static fields
.field public static final INTENT_ACTION_REFRESH_ALARM:Ljava/lang/String; = "com.miui.notes.action.REFRESH_ALARM"

.field public static final INTENT_ACTION_REFRESH_WIDGET:Ljava/lang/String; = "com.miui.notes.action.REFRESH_WIDGET"

.field public static final INTENT_EXTRA_ALERT_DATE:Ljava/lang/String; = "com.miui.notes.alert_date"

.field public static final INTENT_EXTRA_BACKGROUND_ID:Ljava/lang/String; = "com.miui.notes.background_color_id"

.field public static final INTENT_EXTRA_CALL_DATE:Ljava/lang/String; = "com.miui.notes.call_date"

.field public static final INTENT_EXTRA_FOLDER_ID:Ljava/lang/String; = "com.miui.notes.folder_id"

.field public static final INTENT_EXTRA_SNIPPET:Ljava/lang/String; = "com.miui.notes.snippet"

.field public static final INTENT_EXTRA_SOURCE_INTENT:Ljava/lang/String; = "com.miui.notes.source_intent"

.field public static final INTENT_EXTRA_SOURCE_NAME:Ljava/lang/String; = "com.miui.notes.source_name"

.field public static final INTENT_EXTRA_WIDGET_ID:Ljava/lang/String; = "com.miui.notes.widget_id"

.field public static final INTENT_EXTRA_WIDGET_TYPE:Ljava/lang/String; = "com.miui.notes.widget_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
