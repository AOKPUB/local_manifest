# symlinked from local_manifest repo
# Run from root of source tree
# runs pick script from external platform_manifest repo from UnicornButter

root=`pwd`
cd $root

# Pull in linaro changes on gerrit
# if using the pub manifest
if [ -e platform_manifest/pick.sh ]; then
  cd platform_manifest
  ./pick.sh
fi

#Pull in non-device cherries

cd frameworks/base
# submit this patch to aokp gerrit after testing 
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_base refs/changes/00/28400/2 && git cherry-pick FETCH_HEAD
# ----
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/24/4724/3 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/64/4864/4 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/53/4753/3 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/53/4953/1 && git cherry-pick FETCH_HEAD
cd $root

cd frameworks/opt/telephony
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_opt_telephony refs/changes/00/29100/4 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/Mms
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Mms refs/changes/93/4793/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Mms refs/changes/59/4659/4 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/Phone
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Phone refs/changes/47/4947/2 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/ROMControl
#git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/25/4725/1 && git cherry-pick FETCH_HEAD
#git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/75/4775/2 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/54/4754/11 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/54/4954/1 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/Settings
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Settings refs/changes/65/4865/1 && git cherry-pick FETCH_HEAD
cd $root
