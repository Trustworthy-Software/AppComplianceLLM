.class public final Lcom/google/firebase/tracing/FirebaseTrace;
.super Ljava/lang/Object;
.source "FirebaseTrace.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static popTrace()V
    .locals 0

    .line 32
    nop

    .line 33
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 35
    return-void
.end method

.method public static pushTrace(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    nop

    .line 27
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 29
    return-void
.end method
