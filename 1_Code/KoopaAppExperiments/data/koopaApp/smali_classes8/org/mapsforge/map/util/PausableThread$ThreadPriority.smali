.class public final enum Lorg/mapsforge/map/util/PausableThread$ThreadPriority;
.super Ljava/lang/Enum;
.source "PausableThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/util/PausableThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ThreadPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/map/util/PausableThread$ThreadPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

.field public static final enum ABOVE_NORMAL:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

.field public static final enum BELOW_NORMAL:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

.field public static final enum HIGHEST:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

.field public static final enum LOWEST:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

.field public static final enum NORMAL:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;


# instance fields
.field final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 30
    new-instance v0, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const-string v3, "ABOVE_NORMAL"

    invoke-direct {v0, v3, v1, v2}, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->ABOVE_NORMAL:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    .line 35
    new-instance v1, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    const-string v2, "BELOW_NORMAL"

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->BELOW_NORMAL:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    .line 40
    new-instance v2, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    const/4 v5, 0x2

    const/16 v6, 0xa

    const-string v7, "HIGHEST"

    invoke-direct {v2, v7, v5, v6}, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->HIGHEST:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    .line 45
    new-instance v5, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    const-string v6, "LOWEST"

    invoke-direct {v5, v6, v4, v3}, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->LOWEST:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    .line 50
    new-instance v3, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    const/4 v4, 0x4

    const/4 v6, 0x5

    const-string v7, "NORMAL"

    invoke-direct {v3, v7, v4, v6}, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->NORMAL:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    .line 26
    filled-new-array {v0, v1, v2, v5, v3}, [Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->$VALUES:[Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    const/4 p1, 0x1

    if-lt p3, p1, :cond_0

    const/16 p1, 0xa

    if-gt p3, p1, :cond_0

    .line 58
    iput p3, p0, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->priority:I

    .line 59
    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid priority: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/map/util/PausableThread$ThreadPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/map/util/PausableThread$ThreadPriority;
    .locals 1

    .line 26
    sget-object v0, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->$VALUES:[Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    invoke-virtual {v0}, [Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    return-object v0
.end method
