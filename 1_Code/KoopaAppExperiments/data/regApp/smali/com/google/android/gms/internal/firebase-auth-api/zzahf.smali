.class final Lcom/google/android/gms/internal/firebase-auth-api/zzahf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzahd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahj;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzahj;

    .line 4
    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahj;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahj;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    nop

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahj;->zza()B

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza(B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahj;->zza()B

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    return v2

    .line 10
    :cond_0
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    .line 12
    return p1
.end method
