.class public final enum Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
.super Ljava/lang/Enum;
.source "NexEditor.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$TaskError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;",
        ">;",
        "Lcom/nexstreaming/app/common/task/Task$TaskError;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum ADD_CLIP_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum ALREADY_EXPORTING:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum ARGUMENT_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum AUDIORESAMPLER_CREATE_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum CAPTURE_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum CAPTURE_FAIL_ENOSPC:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum CAPTURE_FAIL_OTHER:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum CAPTURE_FAIL_SCANNING:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum CODEC_DECODE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum CODEC_INIT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum CREATE_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DESTINATION_FILE_ALREADY_EXISTS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_CHECK_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_CLIPLIST_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_DEC_DECODE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_DEC_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_DEC_INIT_SURFACE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_ENC_DSI_DIFF_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_ENC_ENCODE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_ENC_FRAME_CONVERT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_ENC_FUNCTION_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_ENC_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_ENC_INPUT_SURFACE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_FILEREADER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_FILEWRITER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_RENDER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_WRITER_UNKNOWN_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum DIRECTEXPORT_WRITER_WRITE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EDITOR_INSTANCE_DESTROYED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EMPTY_PROJECT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum ENCODE_VIDEO_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EVENTHANDLER:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EXPORT_AUDIO_DEC_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EXPORT_NOT_ENOUGHT_DISK_SPACE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EXPORT_NO_SUCCESS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EXPORT_UNEXPECTED_STOP:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EXPORT_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EXPORT_VIDEO_DEC_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EXPORT_VIDEO_ENC_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EXPORT_VIDEO_RENDER_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EXPORT_WRITER_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EXPORT_WRITER_INVAILED_HANDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum EXPORT_WRITER_START_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FASTPREVIEW_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FASTPREVIEW_CLIPLIST_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FASTPREVIEW_DEC_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FASTPREVIEW_DEC_INIT_SURFACE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FASTPREVIEW_FILEREADER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FASTPREVIEW_FIND_CLIP_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FASTPREVIEW_FIND_READER_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FASTPREVIEW_OUTPUTSURFACE_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FASTPREVIEW_RENDER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FASTPREVIEW_TIME_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FASTPREVIEW_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FASTPREVIEW_VIDEO_RENDERER_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FILEREADER_CREATE_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FILEREADER_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FILEWRITER_CREATE_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FILE_INVALID_SYNTAX:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FILE_IO_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum FILE_MISSING:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum GENERAL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum GETCLIPINFO_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum HIGHLIGHT_CODEC_DECODE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum HIGHLIGHT_CODEC_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum HIGHLIGHT_FILEREADER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum HIGHLIGHT_GET_INDEX_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum HIGHLIGHT_RENDER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum HIGHLIGHT_TOO_SHORT_CONTENTS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum HIGHLIGHT_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum HIGHLIGHT_WRITER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum HIGHLIGHT_WRITER_WRITE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum HW_NOT_ENOUGH_MEMORY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum IMAGE_PROCESS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum INPROGRESS_GETCLIPINFO:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum INVALID_INFO:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum INVALID_STATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum MEMALLOC_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum MISSING_RESOURCES:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum NOT_ENOUGH_NEMORY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum NOT_READY_TO_PLAY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum NO_ACTION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum NO_INSTANCE_AVAILABLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum NO_PROJECT_LOADED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum PLAYSTART_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum PLAYSTOP_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum PLAY_SUPERCEEDED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum PROJECT_NOT_CREATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum PROJECT_NOT_OPEN:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum RENAME_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum RENDERER_AUDIO:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum RENDERER_INIT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum SEEKING_LOCKED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum SET_TIME_CANCELED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum SET_TIME_IGNORED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum SOURCE_FILE_NOT_FOUND:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum TEMP_FILE_ALREADY_EXISTS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum THEMESET_CREATE_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum THUMBNAIL_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum THUMBNAIL_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum TRANSCODING_ABORTED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum TRANSCODING_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum TRANSCODING_CODEC_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum TRANSCODING_NOT_ENOUGHT_DISK_SPACE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum TRANSCODING_NOT_SUPPORTED_FORMAT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum TRANSCODING_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNKNOWN:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNRECOGNIZED_ERROR_CODE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNSUPPORT_AUDIO_CODEC:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNSUPPORT_AUDIO_PROFILE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNSUPPORT_AUDIO_SAMPLINGRATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNSUPPORT_FORMAT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNSUPPORT_MAX_RESOLUTION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNSUPPORT_MIN_DURATION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNSUPPORT_MIN_RESOLUTION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNSUPPORT_VIDEIO_PROFILE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNSUPPORT_VIDEO_CODEC:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNSUPPORT_VIDEO_FPS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum UNSUPPORT_VIDEO_LEVEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum VERSION_MISMATCH:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field public static final enum WRAPPER_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mDescriptionRsrcId:I

.field private final mFromEngine:Z

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3760
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3761
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "GENERAL"

    invoke-direct {v0, v1, v6, v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->GENERAL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3762
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v7, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNKNOWN:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3763
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "NO_ACTION"

    invoke-direct {v0, v1, v8, v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NO_ACTION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3764
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "INVALID_INFO"

    invoke-direct {v0, v1, v9, v9}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INVALID_INFO:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3765
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "INVALID_STATE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INVALID_STATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3766
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "VERSION_MISMATCH"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->VERSION_MISMATCH:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3767
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "CREATE_FAILED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CREATE_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3768
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "MEMALLOC_FAILED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string v4, "Memory allocation failed"

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->MEMALLOC_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3769
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "ARGUMENT_FAILED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->ARGUMENT_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3770
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "NOT_ENOUGH_NEMORY"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const-string v4, "Insufficient memory"

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NOT_ENOUGH_NEMORY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3771
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EVENTHANDLER"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EVENTHANDLER:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3772
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FILE_IO_FAILED"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const-string v4, "Error accessing file"

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FILE_IO_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3773
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FILE_INVALID_SYNTAX"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FILE_INVALID_SYNTAX:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3774
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FILEREADER_CREATE_FAIL"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const-string v4, "Could not open file"

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FILEREADER_CREATE_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3775
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FILEWRITER_CREATE_FAIL"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FILEWRITER_CREATE_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3776
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "AUDIORESAMPLER_CREATE_FAIL"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->AUDIORESAMPLER_CREATE_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3777
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNSUPPORT_FORMAT"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const-string v4, "Unsupported format"

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_FORMAT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3778
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FILEREADER_FAILED"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const-string v4, "Error reading file format"

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FILEREADER_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3779
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "PLAYSTART_FAILED"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->PLAYSTART_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3780
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "PLAYSTOP_FAILED"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->PLAYSTOP_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3781
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "PROJECT_NOT_CREATE"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->PROJECT_NOT_CREATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3782
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "PROJECT_NOT_OPEN"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->PROJECT_NOT_OPEN:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3783
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "CODEC_INIT"

    const/16 v2, 0x17

    const/16 v3, 0x17

    const-string v4, "Codec init failed"

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CODEC_INIT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3784
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "RENDERER_INIT"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->RENDERER_INIT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3785
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "THEMESET_CREATE_FAIL"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->THEMESET_CREATE_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3786
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "ADD_CLIP_FAIL"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const-string v4, "Unable to add clip"

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->ADD_CLIP_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3787
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "ENCODE_VIDEO_FAIL"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->ENCODE_VIDEO_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3788
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "INPROGRESS_GETCLIPINFO"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INPROGRESS_GETCLIPINFO:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3789
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "THUMBNAIL_BUSY"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->THUMBNAIL_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3791
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNSUPPORT_MIN_DURATION"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_MIN_DURATION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3792
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNSUPPORT_MAX_RESOLUTION"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_MAX_RESOLUTION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3793
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNSUPPORT_MIN_RESOLUTION"

    const/16 v2, 0x20

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_MIN_RESOLUTION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3794
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNSUPPORT_VIDEIO_PROFILE"

    const/16 v2, 0x21

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_VIDEIO_PROFILE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3795
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNSUPPORT_VIDEO_LEVEL"

    const/16 v2, 0x22

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_VIDEO_LEVEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3796
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNSUPPORT_VIDEO_FPS"

    const/16 v2, 0x23

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_VIDEO_FPS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3798
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "TRANSCODING_BUSY"

    const/16 v2, 0x24

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3799
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "TRANSCODING_NOT_SUPPORTED_FORMAT"

    const/16 v2, 0x25

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_NOT_SUPPORTED_FORMAT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3800
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "TRANSCODING_USER_CANCEL"

    const/16 v2, 0x26

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3802
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "TRANSCODING_NOT_ENOUGHT_DISK_SPACE"

    const/16 v2, 0x27

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_NOT_ENOUGHT_DISK_SPACE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3803
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "TRANSCODING_CODEC_FAILED"

    const/16 v2, 0x28

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_CODEC_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3805
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EXPORT_WRITER_INVAILED_HANDLE"

    const/16 v2, 0x29

    const/16 v3, 0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_WRITER_INVAILED_HANDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3806
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EXPORT_WRITER_INIT_FAIL"

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_WRITER_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3807
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EXPORT_WRITER_START_FAIL"

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_WRITER_START_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3808
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EXPORT_AUDIO_DEC_INIT_FAIL"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_AUDIO_DEC_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3809
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EXPORT_VIDEO_DEC_INIT_FAIL"

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_VIDEO_DEC_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3810
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EXPORT_VIDEO_ENC_FAIL"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_VIDEO_ENC_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3811
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EXPORT_VIDEO_RENDER_INIT_FAIL"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_VIDEO_RENDER_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3812
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EXPORT_NOT_ENOUGHT_DISK_SPACE"

    const/16 v2, 0x30

    const/16 v3, 0x30

    const-string v4, "Not enough space"

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_NOT_ENOUGHT_DISK_SPACE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3814
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNSUPPORT_AUDIO_PROFILE"

    const/16 v2, 0x31

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_AUDIO_PROFILE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3816
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "THUMBNAIL_INIT_FAIL"

    const/16 v2, 0x32

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->THUMBNAIL_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3818
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNSUPPORT_AUDIO_CODEC"

    const/16 v2, 0x33

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_AUDIO_CODEC:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3819
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNSUPPORT_VIDEO_CODEC"

    const/16 v2, 0x34

    const/16 v3, 0x34

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_VIDEO_CODEC:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3821
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "HIGHLIGHT_FILEREADER_INIT_ERROR"

    const/16 v2, 0x35

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_FILEREADER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3822
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "HIGHLIGHT_TOO_SHORT_CONTENTS"

    const/16 v2, 0x36

    const/16 v3, 0x36

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_TOO_SHORT_CONTENTS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3823
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "HIGHLIGHT_CODEC_INIT_ERROR"

    const/16 v2, 0x37

    const/16 v3, 0x37

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_CODEC_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3824
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "HIGHLIGHT_CODEC_DECODE_ERROR"

    const/16 v2, 0x38

    const/16 v3, 0x38

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_CODEC_DECODE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3825
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "HIGHLIGHT_RENDER_INIT_ERROR"

    const/16 v2, 0x39

    const/16 v3, 0x39

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_RENDER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3826
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "HIGHLIGHT_WRITER_INIT_ERROR"

    const/16 v2, 0x3a

    const/16 v3, 0x3a

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_WRITER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3827
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "HIGHLIGHT_WRITER_WRITE_ERROR"

    const/16 v2, 0x3b

    const/16 v3, 0x3b

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_WRITER_WRITE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3828
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "HIGHLIGHT_GET_INDEX_ERROR"

    const/16 v2, 0x3c

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_GET_INDEX_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3829
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "HIGHLIGHT_USER_CANCEL"

    const/16 v2, 0x3d

    const/16 v3, 0x3d

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3831
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "GETCLIPINFO_USER_CANCEL"

    const/16 v2, 0x3e

    const/16 v3, 0x3e

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->GETCLIPINFO_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3833
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_CLIPLIST_ERROR"

    const/16 v2, 0x3f

    const/16 v3, 0x3f

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_CLIPLIST_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3834
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_CHECK_ERROR"

    const/16 v2, 0x40

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_CHECK_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3835
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_FILEREADER_INIT_ERROR"

    const/16 v2, 0x41

    const/16 v3, 0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_FILEREADER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3836
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_FILEWRITER_INIT_ERROR"

    const/16 v2, 0x42

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_FILEWRITER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3837
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_DEC_INIT_ERROR"

    const/16 v2, 0x43

    const/16 v3, 0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_DEC_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3838
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_DEC_INIT_SURFACE_ERROR"

    const/16 v2, 0x44

    const/16 v3, 0x44

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_DEC_INIT_SURFACE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3839
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_DEC_DECODE_ERROR"

    const/16 v2, 0x45

    const/16 v3, 0x45

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_DEC_DECODE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3840
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_ENC_INIT_ERROR"

    const/16 v2, 0x46

    const/16 v3, 0x46

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_ENC_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3841
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_ENC_ENCODE_ERROR"

    const/16 v2, 0x47

    const/16 v3, 0x47

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_ENC_ENCODE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3842
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_ENC_INPUT_SURFACE_ERROR"

    const/16 v2, 0x48

    const/16 v3, 0x48

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_ENC_INPUT_SURFACE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3843
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_ENC_FUNCTION_ERROR"

    const/16 v2, 0x49

    const/16 v3, 0x49

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_ENC_FUNCTION_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3844
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_ENC_DSI_DIFF_ERROR"

    const/16 v2, 0x4a

    const/16 v3, 0x4a

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_ENC_DSI_DIFF_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3845
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_ENC_FRAME_CONVERT_ERROR"

    const/16 v2, 0x4b

    const/16 v3, 0x4b

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_ENC_FRAME_CONVERT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3846
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_RENDER_INIT_ERROR"

    const/16 v2, 0x4c

    const/16 v3, 0x4c

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_RENDER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3847
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_WRITER_WRITE_ERROR"

    const/16 v2, 0x4d

    const/16 v3, 0x4d

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_WRITER_WRITE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3848
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DIRECTEXPORT_WRITER_UNKNOWN_ERROR"

    const/16 v2, 0x4e

    const/16 v3, 0x4e

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_WRITER_UNKNOWN_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3850
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FASTPREVIEW_USER_CANCEL"

    const/16 v2, 0x4f

    const/16 v3, 0x4f

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3851
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FASTPREVIEW_CLIPLIST_ERROR"

    const/16 v2, 0x50

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_CLIPLIST_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3852
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FASTPREVIEW_FIND_CLIP_ERROR"

    const/16 v2, 0x51

    const/16 v3, 0x51

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_FIND_CLIP_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3853
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FASTPREVIEW_FIND_READER_ERROR"

    const/16 v2, 0x52

    const/16 v3, 0x52

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_FIND_READER_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3854
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FASTPREVIEW_VIDEO_RENDERER_ERROR"

    const/16 v2, 0x53

    const/16 v3, 0x53

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_VIDEO_RENDERER_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3855
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FASTPREVIEW_DEC_INIT_SURFACE_ERROR"

    const/16 v2, 0x54

    const/16 v3, 0x54

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_DEC_INIT_SURFACE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3857
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "HW_NOT_ENOUGH_MEMORY"

    const/16 v2, 0x55

    const/16 v3, 0x55

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HW_NOT_ENOUGH_MEMORY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3858
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EXPORT_USER_CANCEL"

    const/16 v2, 0x56

    const/16 v3, 0x56

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3860
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FASTPREVIEW_DEC_INIT_ERROR"

    const/16 v2, 0x57

    const/16 v3, 0x57

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_DEC_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3861
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FASTPREVIEW_FILEREADER_INIT_ERROR"

    const/16 v2, 0x58

    const/16 v3, 0x58

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_FILEREADER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3862
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FASTPREVIEW_TIME_ERROR"

    const/16 v2, 0x59

    const/16 v3, 0x59

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_TIME_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3863
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FASTPREVIEW_RENDER_INIT_ERROR"

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_RENDER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3864
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FASTPREVIEW_OUTPUTSURFACE_INIT_ERROR"

    const/16 v2, 0x5b

    const/16 v3, 0x5b

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_OUTPUTSURFACE_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3865
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FASTPREVIEW_BUSY"

    const/16 v2, 0x5c

    const/16 v3, 0x5c

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3867
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "CODEC_DECODE"

    const/16 v2, 0x5d

    const/16 v3, 0x5d

    const-string v4, "Codec decode failed"

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CODEC_DECODE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3868
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "RENDERER_AUDIO"

    const/16 v2, 0x5e

    const/16 v3, 0x5e

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->RENDERER_AUDIO:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3869
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNSUPPORT_AUDIO_SAMPLINGRATE"

    const/16 v2, 0x5f

    const/16 v3, 0x5f

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_AUDIO_SAMPLINGRATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3871
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "IMAGE_PROCESS"

    const/16 v2, 0x60

    const/16 v3, 0x1001

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->IMAGE_PROCESS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3872
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "SET_TIME_IGNORED"

    const/16 v2, 0x61

    const-string v3, "Set time ignored"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->SET_TIME_IGNORED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3873
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "SET_TIME_CANCELED"

    const/16 v2, 0x62

    const-string v3, "Set time canceled"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->SET_TIME_CANCELED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3874
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "CAPTURE_FAILED"

    const/16 v2, 0x63

    const-string v3, "Capture failed"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CAPTURE_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3875
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "SOURCE_FILE_NOT_FOUND"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->SOURCE_FILE_NOT_FOUND:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3876
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "TRANSCODING_ABORTED"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_ABORTED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3877
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "DESTINATION_FILE_ALREADY_EXISTS"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DESTINATION_FILE_ALREADY_EXISTS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3878
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "TEMP_FILE_ALREADY_EXISTS"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TEMP_FILE_ALREADY_EXISTS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3879
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "NO_INSTANCE_AVAILABLE"

    const/16 v2, 0x68

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NO_INSTANCE_AVAILABLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3880
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EXPORT_NO_SUCCESS"

    const/16 v2, 0x69

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_NO_SUCCESS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3881
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "PLAY_SUPERCEEDED"

    const/16 v2, 0x6a

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->PLAY_SUPERCEEDED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3882
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "WRAPPER_BUSY"

    const/16 v2, 0x6b

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->WRAPPER_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3883
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "NOT_READY_TO_PLAY"

    const/16 v2, 0x6c

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NOT_READY_TO_PLAY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3884
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "SEEKING_LOCKED"

    const/16 v2, 0x6d

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->SEEKING_LOCKED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3885
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "NO_PROJECT_LOADED"

    const/16 v2, 0x6e

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NO_PROJECT_LOADED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3886
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "ALREADY_EXPORTING"

    const/16 v2, 0x6f

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->ALREADY_EXPORTING:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3887
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EMPTY_PROJECT"

    const/16 v2, 0x70

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EMPTY_PROJECT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3888
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "MISSING_RESOURCES"

    const/16 v2, 0x71

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->MISSING_RESOURCES:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3889
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EXPORT_UNEXPECTED_STOP"

    const/16 v2, 0x72

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_UNEXPECTED_STOP:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3890
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "RENAME_FAIL"

    const/16 v2, 0x73

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->RENAME_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3891
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "CAPTURE_FAIL_ENOSPC"

    const/16 v2, 0x74

    const-string v3, "Not enough space"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CAPTURE_FAIL_ENOSPC:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3892
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "CAPTURE_FAIL_OTHER"

    const/16 v2, 0x75

    const-string v3, "Capture failed"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CAPTURE_FAIL_OTHER:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3893
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "CAPTURE_FAIL_SCANNING"

    const/16 v2, 0x76

    const-string v3, "Media scanner failed"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CAPTURE_FAIL_SCANNING:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3894
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "UNRECOGNIZED_ERROR_CODE"

    const/16 v2, 0x77

    const-string v3, "Unrecognized error code"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNRECOGNIZED_ERROR_CODE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3895
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "EDITOR_INSTANCE_DESTROYED"

    const/16 v2, 0x78

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EDITOR_INSTANCE_DESTROYED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3896
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    const-string v1, "FILE_MISSING"

    const/16 v2, 0x79

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FILE_MISSING:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 3759
    const/16 v0, 0x7a

    new-array v0, v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->GENERAL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNKNOWN:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NO_ACTION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INVALID_INFO:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INVALID_STATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->VERSION_MISMATCH:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CREATE_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->MEMALLOC_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->ARGUMENT_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NOT_ENOUGH_NEMORY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EVENTHANDLER:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FILE_IO_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FILE_INVALID_SYNTAX:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FILEREADER_CREATE_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FILEWRITER_CREATE_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->AUDIORESAMPLER_CREATE_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_FORMAT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FILEREADER_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->PLAYSTART_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->PLAYSTOP_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->PROJECT_NOT_CREATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->PROJECT_NOT_OPEN:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CODEC_INIT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->RENDERER_INIT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->THEMESET_CREATE_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->ADD_CLIP_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->ENCODE_VIDEO_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INPROGRESS_GETCLIPINFO:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->THUMBNAIL_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_MIN_DURATION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_MAX_RESOLUTION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_MIN_RESOLUTION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_VIDEIO_PROFILE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_VIDEO_LEVEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_VIDEO_FPS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_NOT_SUPPORTED_FORMAT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_NOT_ENOUGHT_DISK_SPACE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_CODEC_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_WRITER_INVAILED_HANDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_WRITER_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_WRITER_START_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_AUDIO_DEC_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_VIDEO_DEC_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_VIDEO_ENC_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_VIDEO_RENDER_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_NOT_ENOUGHT_DISK_SPACE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_AUDIO_PROFILE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->THUMBNAIL_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_AUDIO_CODEC:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_VIDEO_CODEC:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_FILEREADER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_TOO_SHORT_CONTENTS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_CODEC_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_CODEC_DECODE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_RENDER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_WRITER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_WRITER_WRITE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_GET_INDEX_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HIGHLIGHT_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->GETCLIPINFO_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_CLIPLIST_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_CHECK_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_FILEREADER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_FILEWRITER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_DEC_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_DEC_INIT_SURFACE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_DEC_DECODE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_ENC_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x47

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_ENC_ENCODE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_ENC_INPUT_SURFACE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x49

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_ENC_FUNCTION_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_ENC_DSI_DIFF_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_ENC_FRAME_CONVERT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_RENDER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_WRITER_WRITE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DIRECTEXPORT_WRITER_UNKNOWN_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x50

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_CLIPLIST_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x51

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_FIND_CLIP_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x52

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_FIND_READER_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x53

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_VIDEO_RENDERER_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x54

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_DEC_INIT_SURFACE_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x55

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->HW_NOT_ENOUGH_MEMORY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x56

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x57

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_DEC_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x58

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_FILEREADER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x59

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_TIME_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_RENDER_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_OUTPUTSURFACE_INIT_ERROR:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FASTPREVIEW_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CODEC_DECODE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->RENDERER_AUDIO:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_AUDIO_SAMPLINGRATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x60

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->IMAGE_PROCESS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x61

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->SET_TIME_IGNORED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x62

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->SET_TIME_CANCELED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x63

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CAPTURE_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x64

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->SOURCE_FILE_NOT_FOUND:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x65

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_ABORTED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x66

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->DESTINATION_FILE_ALREADY_EXISTS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x67

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TEMP_FILE_ALREADY_EXISTS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x68

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NO_INSTANCE_AVAILABLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x69

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_NO_SUCCESS:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->PLAY_SUPERCEEDED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->WRAPPER_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NOT_READY_TO_PLAY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->SEEKING_LOCKED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NO_PROJECT_LOADED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->ALREADY_EXPORTING:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x70

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EMPTY_PROJECT:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x71

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->MISSING_RESOURCES:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x72

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_UNEXPECTED_STOP:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x73

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->RENAME_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x74

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CAPTURE_FAIL_ENOSPC:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x75

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CAPTURE_FAIL_OTHER:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x76

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CAPTURE_FAIL_SCANNING:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x77

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNRECOGNIZED_ERROR_CODE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x78

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EDITOR_INSTANCE_DESTROYED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x79

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->FILE_MISSING:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->$VALUES:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3929
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3930
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mValue:I

    .line 3931
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescription:Ljava/lang/String;

    .line 3932
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescriptionRsrcId:I

    .line 3933
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mFromEngine:Z

    .line 3934
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 3908
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3909
    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mValue:I

    .line 3910
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescription:Ljava/lang/String;

    .line 3911
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescriptionRsrcId:I

    .line 3912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mFromEngine:Z

    .line 3913
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 3915
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3916
    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mValue:I

    .line 3917
    iput-object p4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescription:Ljava/lang/String;

    .line 3918
    iput p5, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescriptionRsrcId:I

    .line 3919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mFromEngine:Z

    .line 3920
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3922
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3923
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mValue:I

    .line 3924
    iput-object p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescription:Ljava/lang/String;

    .line 3925
    iput p4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescriptionRsrcId:I

    .line 3926
    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mFromEngine:Z

    .line 3927
    return-void
.end method

.method public static fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 5

    .prologue
    .line 3958
    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->values()[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 3959
    iget-boolean v4, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mFromEngine:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 3963
    :goto_1
    return-object v0

    .line 3958
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3962
    :cond_1
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNRECOGNIZED_ERROR_CODE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 1

    .prologue
    .line 3759
    const-class v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 1

    .prologue
    .line 3759
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->$VALUES:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3941
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3942
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->name()Ljava/lang/String;

    move-result-object v0

    .line 3944
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 3968
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalizedDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3948
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescriptionRsrcId:I

    if-eqz v0, :cond_0

    .line 3949
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescriptionRsrcId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3954
    :goto_0
    return-object v0

    .line 3951
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3952
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3954
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocalizedMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3978
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getLocalizedDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3973
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 3937
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mValue:I

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 3905
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3983
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-ne p0, v0, :cond_0

    .line 3984
    const-string v0, "NONE(0)"

    .line 3988
    :goto_0
    return-object v0

    .line 3985
    :cond_0
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mValue:I

    if-eqz v0, :cond_1

    .line 3986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3988
    :cond_1
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
