.class public final Lio/perfmark/TaskCloseable;
.super Ljava/lang/Object;
.source "TaskCloseable.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final INSTANCE:Lio/perfmark/TaskCloseable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lio/perfmark/TaskCloseable;

    invoke-direct {v0}, Lio/perfmark/TaskCloseable;-><init>()V

    sput-object v0, Lio/perfmark/TaskCloseable;->INSTANCE:Lio/perfmark/TaskCloseable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 40
    invoke-static {}, Lio/perfmark/PerfMark;->stopTask()V

    .line 41
    return-void
.end method
