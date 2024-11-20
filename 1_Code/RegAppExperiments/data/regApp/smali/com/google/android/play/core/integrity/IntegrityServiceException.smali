.class public Lcom/google/android/play/core/integrity/IntegrityServiceException;
.super Lcom/google/android/gms/common/api/ApiException;
.source "com.google.android.play:integrity@@1.1.0"


# instance fields
.field private final a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(ILjava/lang/Throwable;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    invoke-static {p1}, Lcom/google/android/play/core/integrity/model/a;->a(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 4
    const-string v3, "Integrity API error (%d): %s."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    if-eqz p1, :cond_0

    .line 5
    iput-object p2, p0, Lcom/google/android/play/core/integrity/IntegrityServiceException;->a:Ljava/lang/Throwable;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string p2, "ErrorCode should not be 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/integrity/IntegrityServiceException;->a:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/play/core/integrity/IntegrityServiceException;
    invoke-super {p0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    return v0
.end method
