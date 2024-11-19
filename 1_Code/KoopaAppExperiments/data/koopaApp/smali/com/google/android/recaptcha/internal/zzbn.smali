.class public final Lcom/google/android/recaptcha/internal/zzbn;
.super Ljava/lang/Object;
.source "com.google.android.recaptcha:recaptcha@@18.1.2"


# instance fields
.field private final zza:Lcom/google/android/recaptcha/internal/zzbm;

.field private zzb:B

.field private final zzc:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/recaptcha/internal/zzbm;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzbm;-><init>()V

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzbn;->zza:Lcom/google/android/recaptcha/internal/zzbm;

    .line 2
    new-instance v1, Lkotlin/ranges/IntRange;

    const/4 v2, 0x1

    const/16 v3, 0x7f

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/google/android/recaptcha/internal/zzbn;->zzb:B

    new-instance v1, Ljava/util/HashMap;

    .line 3
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/recaptcha/internal/zzbn;->zzc:Ljava/util/HashMap;

    .line 4
    const/16 v2, 0xad

    invoke-virtual {v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzbm;->zze(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/recaptcha/internal/zzbn;->zzb:B

    return v0
.end method

.method public final zzb()Lcom/google/android/recaptcha/internal/zzbm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzbn;->zza:Lcom/google/android/recaptcha/internal/zzbm;

    return-object v0
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzbn;->zza:Lcom/google/android/recaptcha/internal/zzbm;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzbm;->zzd()V

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzbn;->zza:Lcom/google/android/recaptcha/internal/zzbm;

    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzbn;->zzc:Ljava/util/HashMap;

    .line 2
    const/16 v2, 0xad

    invoke-virtual {v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzbm;->zze(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzd(B)V
    .locals 0

    iput-byte p1, p0, Lcom/google/android/recaptcha/internal/zzbn;->zzb:B

    return-void
.end method

.method public final zze(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzbn;->zzc:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
