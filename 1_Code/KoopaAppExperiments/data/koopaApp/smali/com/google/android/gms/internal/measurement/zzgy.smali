.class public final Lcom/google/android/gms/internal/measurement/zzgy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"


# instance fields
.field private final zza:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzhb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "BuildInfo must be non-null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzgy;->zza:Z

    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Z
    .locals 1

    .line 5
    const-string v0, "flagName must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgy;->zza:Z

    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x1

    return p1

    .line 8
    :cond_0
    nop

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zza:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMultimap;

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    .line 11
    return p1
.end method
