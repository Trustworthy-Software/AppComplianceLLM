.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzd;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaij;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaij<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaij;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaij;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaij;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaij;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaij<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzc;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaij;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaij;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaij;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaij;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaij;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaij;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaij;

    return-object v0
.end method
