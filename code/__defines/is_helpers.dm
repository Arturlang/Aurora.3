// simple is_type and similar inline helpers

#if DM_VERSION < 513
#define islist(L) (istype(L, /list))
#endif

#if DM_VERSION < 513
#define ismovableatom(A) (istype(A, /atom/movable))
#else
#define ismovableatom(A) ismovable(A)
#endif

#define isatom(A) (isloc(A))

#define isgroundlessturf(A) (is_type_in_typecache(A, GLOB.turfs_without_ground))

#define isindestructiblefloor(A) (istype(A, /turf/open/indestructible))

#define isspaceturf(A) (istype(A, /turf/open/space))

#define isfloorturf(A) (istype(A, /turf/open/floor))

#define isclosedturf(A) (istype(A, /turf/closed))

#define isindestructiblewall(A) (istype(A, /turf/closed/indestructible))

#define iswallturf(A) (istype(A, /turf/closed/wall))

#define ismineralturf(A) (istype(A, /turf/closed/mineral))

#define isplatingturf(A) (istype(A, /turf/open/floor/plating))

//more carbon mobs
#define ismonkey(A) (istype(A, /mob/living/carbon/monkey))

#define issiliconoradminghost(A) (istype(A, /mob/living/silicon) || IsAdminGhost(A))

#define iscyborg(A) (istype(A, /mob/living/silicon/robot))

#define isbot(A) (istype(A,/mob/living/bot))

#define isshade(A) (istype(A, /mob/living/simple_animal/shade))

#define ismouse(A) (istype(A, /mob/living/simple_animal/mouse))

#define iscow(A) (istype(A, /mob/living/simple_animal/cow))

#define isdrone(A) (istype(A, /mob/living/simple_animal/drone))

#define iscat(A) (istype(A, /mob/living/simple_animal/pet/cat))

#define isdog(A) (istype(A, /mob/living/simple_animal/pet/dog))

#define ishostile(A) (istype(A, /mob/living/simple_animal/hostile))

#define isconstruct(A) (istype(A, /mob/living/simple_animal/hostile/construct))

#define isclown(A) (istype(A, /mob/living/simple_animal/hostile/retaliate/clown))


//Misc mobs

#define isdead(A) (istype(A, /mob/dead))

#define isabstracteye(A) (istype(A, /mob/abstract/eye))

#define isaieye(A) (istype(A, /mob/abstract/eye/aiEye/))

//Objects

#define isitem(A) (istype(A, /obj/item))

#define isidcard(I) (istype(I, /obj/item/card/id))

#define isstructure(A) (istype(A, /obj/structure))

#define ismachinery(A) (istype(A, /obj/machinery))

#define ismecha(A) (istype(A, /obj/mecha))

#define is_cleanable(A) (istype(A, /obj/effect/decal/cleanable) || istype(A, /obj/effect/rune)) //if something is cleanable

#define isclothing(A) (istype(A, /obj/item/clothing))

#define iscash(A) (istype(A, /obj/item/coin) || istype(A, /obj/item/stack/spacecash) || istype(A, /obj/item/holochip))

#define is_pointed(W) (is_type_in_typecache(W, GLOB.pointed_types))

#define isbodypart(A) (istype(A, /obj/item/bodypart))

#define isgun(A) (istype(A, /obj/item/gun))

#define is_glass_sheet(O) (is_type_in_typecache(O, GLOB.glass_sheet_types))

#define iseffect(O) (istype(O, /obj/effect))

#define isshuttleturf(T) (length(T.baseturfs) && (/turf/baseturf_skipover/shuttle in T.baseturfs))