/**
 * Copyright (c) 2023, The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package androidx.camera.extensions.impl.service;

import androidx.camera.extensions.impl.service.LatencyRange;
import androidx.camera.extensions.impl.service.SizeList;
import androidx.camera.extensions.impl.service.Size;
import androidx.camera.extensions.impl.service.ISessionProcessorImpl;
import androidx.camera.extensions.impl.service.CameraMetadataWrapper;

interface IAdvancedExtenderImpl {
    boolean isExtensionAvailable(in String cameraId);
    void init(in String cameraId);
    LatencyRange getEstimatedCaptureLatencyRange(
          in String cameraId, in Size outputSize, int format);
    @nullable List<SizeList> getSupportedPreviewOutputResolutions(in String cameraId);
    @nullable List<SizeList> getSupportedCaptureOutputResolutions(in String cameraId);
    @nullable List<SizeList> getSupportedYuvAnalysisResolutions(in String cameraId);
    ISessionProcessorImpl getSessionProcessor();
    CameraMetadataWrapper getAvailableCaptureRequestKeys(in String cameraId);
    CameraMetadataWrapper getAvailableCaptureResultKeys(in String cameraId);
}