.class public final Lcom/google/android/gms/common/internal/Preconditions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Uninstantiable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static checkArgument(Z)V
    .locals 0
    .param p0, "expression"    # Z

    .line 1
    nop

    .end local p0    # "expression":Z
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static checkArgument(ZLjava/lang/Object;)V
    .locals 0
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;

    .line 2
    nop

    .end local p0    # "expression":Z
    .end local p1    # "errorMessage":Ljava/lang/Object;
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;

    .line 3
    nop

    .end local p0    # "expression":Z
    .end local p1    # "errorMessage":Ljava/lang/String;
    .end local p2    # "errorMessageArgs":[Ljava/lang/Object;
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkHandlerThread(Landroid/os/Handler;)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2
    .end local p0    # "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "null current looper"

    .line 3
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Must be called on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " thread, but got "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static checkHandlerThread(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .end local p0    # "handler":Landroid/os/Handler;
    .end local p1    # "errorMessage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_0

    .line 6
    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkMainThread()V
    .locals 1

    .line 1
    const-string v0, "Must be called on the main application thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    return-void
.end method

.method public static checkMainThread(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorMessage"    # Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zza()Z

    move-result v0

    .end local p0    # "errorMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3
    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "string":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v0, "Given String is empty or null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 3
    nop

    .end local p0    # "string":Ljava/lang/String;
    .end local p1    # "errorMessage":Ljava/lang/Object;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkNotMainThread()V
    .locals 1

    .line 1
    const-string v0, "Must not be called on the main application thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    return-void
.end method

.method public static checkNotMainThread(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorMessage"    # Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zza()Z

    move-result v0

    .end local p0    # "errorMessage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3
    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "reference"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "reference":Ljava/lang/Object;
    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "reference"    # Ljava/lang/Object;
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 2
    nop

    .end local p0    # "reference":Ljava/lang/Object;
    .end local p1    # "errorMessage":Ljava/lang/Object;
    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkNotZero(I)I
    .locals 1
    .param p0, "value"    # I

    .line 1
    nop

    .end local p0    # "value":I
    if-eqz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given Integer is zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkNotZero(ILjava/lang/Object;)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "errorMessage"    # Ljava/lang/Object;

    .line 2
    nop

    .end local p0    # "value":I
    .end local p1    # "errorMessage":Ljava/lang/Object;
    if-eqz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkNotZero(J)J
    .locals 2
    .param p0, "value"    # J

    .line 3
    nop

    .end local p0    # "value":J
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given Long is zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkNotZero(JLjava/lang/Object;)J
    .locals 2
    .param p0, "value"    # J
    .param p2, "errorMessage"    # Ljava/lang/Object;

    .line 4
    nop

    .end local p0    # "value":J
    .end local p2    # "errorMessage":Ljava/lang/Object;
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkState(Z)V
    .locals 0
    .param p0, "expression"    # Z

    .line 1
    nop

    .end local p0    # "expression":Z
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static checkState(ZLjava/lang/Object;)V
    .locals 0
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;

    .line 2
    nop

    .end local p0    # "expression":Z
    .end local p1    # "errorMessage":Ljava/lang/Object;
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs checkState(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;

    .line 3
    nop

    .end local p0    # "expression":Z
    .end local p1    # "errorMessage":Ljava/lang/String;
    .end local p2    # "errorMessageArgs":[Ljava/lang/Object;
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
