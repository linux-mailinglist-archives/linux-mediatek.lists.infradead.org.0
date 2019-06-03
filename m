Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E86326F0
	for <lists+linux-mediatek@lfdr.de>; Mon,  3 Jun 2019 05:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=prMaeeoTxrRMV9RLvddWaPv4pQRk0UZQMNPxD7dm/hk=; b=D1LfX2Zfz8J59e
	iQGZP4kVT/mxOvrMElRDOVb5Zv8+U+53slgDLlSlgpo/pmuA3Wam6PY750DOaL1OsYYfe5/mcGRj5
	IzUqcC/Suc4ltXuShHNAzo2tExQH9r8LilNmXhg+Nmz64bPQyN5C3m14jT/bYV2SgTDDZLbS9VMWW
	dDFjrj1uq1a6XnqM3zy5ODUs1N5deEnMht77COD1CEqCYylkJ4HBXpc2SXMzLDAPO0lprnw8MfLte
	ceCPm3dzXEZW51xV9GJ6IW8k4cpADODBj7jccmX5PLAEO9SDSFZ0lxGiSEU080hOZSisZWz8Re3mt
	FvZqZo7ue28EPilNL3Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXdvC-0002S0-BB; Mon, 03 Jun 2019 03:46:06 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXdv7-0002QC-NH
 for linux-mediatek@lists.infradead.org; Mon, 03 Jun 2019 03:46:04 +0000
Received: by mail-pf1-x442.google.com with SMTP id a23so9777078pff.4
 for <linux-mediatek@lists.infradead.org>; Sun, 02 Jun 2019 20:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=g6Lf+23HSQechU41mGLG7xpgsFb3R/Z2h8CM3X+DSWc=;
 b=IfRJyLDzuRgF3Dvz3X71zFx0BsGX0g52sg0974YDCjYXiDosnudeBm1Ceh3AE4zbMB
 P7UK3/EvxHVDMBWFSGz58c3E4vCBLX36bNqoDXPcos1426lhucd4jIjNZKQzb3WKLy0H
 PPocpEVF4cqjd6nJbL6ZrhC3tp1UCb+AD2PgM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=g6Lf+23HSQechU41mGLG7xpgsFb3R/Z2h8CM3X+DSWc=;
 b=HSgCeXbV5Q/MAMFS5xNh94ARcTQcjIoOo1Y1Tp0feixgJhmeG6F3B5ClS5wyyZ88XV
 Fjk8y+4Kd9zNPkOFJjkMJupt9zhC3C4+I5SnCmu2eWA6IYKxj8FkPi5L2UNV/KrFxdNp
 NblpK+9f7F8XSeVw6NOHkQbpLEtlv+3uK7DKDEy6j7EesBri5MOeMJg+oZWIGMHbjKO7
 FS6OXDKeadOXPoFpfw3R2oXasFvtVyaTeJgN1LCAUPUii2Nqp3tFNR5/Mc+gpa8pmW+f
 0UnGzTw8RIrKvEq/nYDtqaOSUg1urGS+KmoW/FIAGAYFOduMMnmmKuWc8xyi85X0HmJk
 pA4w==
X-Gm-Message-State: APjAAAVByxouEv4fSGRsjVYLV3yRJU8SebzKUM9qgDLQUUsx5Toed/uZ
 ThyStKiF3PRbLULzxQw1/uuJxQ==
X-Google-Smtp-Source: APXvYqwkRDz1voj0iLa2MF5FNoxioGq4wQYWBXcnOZWcUwRP+zV5EhmCNC4Wpc8cOydVhQKYmRlG/Q==
X-Received: by 2002:a17:90a:a102:: with SMTP id
 s2mr27300178pjp.53.1559533557550; 
 Sun, 02 Jun 2019 20:45:57 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id i73sm11878960pje.9.2019.06.02.20.45.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 20:45:56 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v10 0/7] Add support for mt8183 SCP.
Date: Mon,  3 Jun 2019 11:45:05 +0800
Message-Id: <20190603034529.154969-1-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_204601_807583_91CF7CF3 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 Erin Lo <erin.lo@mediatek.com>,
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>, Guenter Roeck <groeck@chromium.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add support for controlling and communicating with mt8183's system
control processor (SCP), using the remoteproc & rpmsg framework.
And also add a cros_ec driver for CrOS EC host command over rpmsg.

The overall structure of the series is:
* remoteproc/mtk_scp.c: Control the start / stop of SCP (Patch 2, 3).
* remoteproc/mtk_scp_ipi.c: Communicates to SCP using inter-processor
  interrupt (IPI) and shared memory (Patch 2, 3).
* rpmsg/mtk_rpmsg.c: Wrapper to wrap the IPI communication into a rpmsg
  device. Supports name service for SCP firmware to
  announce channels (Patch 4).
* platform/chrome/cros_ec_rpmsg.c: Communicates with the SCP over the
  rpmsg framework (like what platform/chrome/cros_ec_{i2c,spi}.c does)
  (Patch 5, 6).
* add scp dts node to mt8183 platform (Patch 7).

This series (In particular, Patch 7) is based on
https://patchwork.kernel.org/cover/10962385/.

Changes from v9:
 - Remove reserve-memory-vpu_share node.
 - Remove change to cros_ec_commands.h (That is already in
   https://lore.kernel.org/lkml/20190518063949.GY4319@dell/T/)

Changes from v8:
 - Rebased onto https://patchwork.kernel.org/cover/10962385/.
 - Drop merged cros_ec_rpmsg patch, and add scp dts node patch.
 - Add more reserved memory region.

Changes from v7:
 - Rebase onto https://lore.kernel.org/patchwork/patch/1059196/.
 - Fix clock enable/disable timing for SCP driver.
 - Add more SCP IPI ID.

Changes from v6:
 - Decouple mtk_rpmsg from mtk_scp.
 - Change data of EC response to be aligned to 4 bytes.

Changes from v5:
 - Add device tree binding document for cros_ec_rpmsg.
 - Better document in comments for cros_ec_rpmsg.
 - Remove dependency on CONFIG_ in binding tree document.

Changes from v4:
 - Merge patch 6 (Load ELF firmware) into patch 2, so the driver loads
   ELF firmware by default, and no longer accept plain binary.
 - rpmsg_device listed in device tree (as a child of the SCP node) would
   have it's device tree node mapped to the rpmsg_device, so the rpmsg
   driver can use the properties on device tree.

Changes from v3:
 - Make writing to SCP SRAM aligned.
 - Add a new patch (Patch 6) to load ELF instead of bin firmware.
 - Add host event support for EC driver.
 - Fix some bugs found in testing (missing spin_lock_init,
   rproc_subdev_unprepare to rproc_subdev_stop).
 - Fix some coding style issue found by checkpatch.pl.

Changes from v2:
 - Fold patch 3 into patch 2 in v2.
 - Move IPI id around to support cross-testing for old and new firmware.
 - Finish more TODO items.

Changes from v1:
 - Extract functions and rename variables in mtk_scp.c.
 - Do cleanup properly in mtk_rpmsg.c, which also removes the problem of
   short-lived work items.
 - Code format fix based on feedback for cros_ec_rpmsg.c.
 - Extract feature detection for SCP into separate patch (Patch 6).

Eddie Huang (1):
  arm64: dts: mt8183: add scp node

Erin Lo (3):
  dt-bindings: Add a binding for Mediatek SCP
  remoteproc/mediatek: add SCP support for mt8183
  remoteproc: mt8183: add reserved memory manager API

Pi-Hsun Shih (3):
  rpmsg: add rpmsg support for mt8183 SCP.
  dt-bindings: Add binding for cros-ec-rpmsg.
  mfd: cros_ec: differentiate SCP from EC by feature bit.

 .../devicetree/bindings/mfd/cros-ec.txt       |   5 +-
 .../bindings/remoteproc/mtk,scp.txt           |  36 +
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |  11 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      |  12 +
 drivers/mfd/cros_ec_dev.c                     |  10 +
 drivers/remoteproc/Kconfig                    |  10 +
 drivers/remoteproc/Makefile                   |   1 +
 drivers/remoteproc/mtk_common.h               |  77 ++
 drivers/remoteproc/mtk_scp.c                  | 678 ++++++++++++++++++
 drivers/remoteproc/mtk_scp_ipi.c              | 163 +++++
 drivers/rpmsg/Kconfig                         |   9 +
 drivers/rpmsg/Makefile                        |   1 +
 drivers/rpmsg/mtk_rpmsg.c                     | 396 ++++++++++
 include/linux/mfd/cros_ec.h                   |   1 +
 include/linux/platform_data/mtk_scp.h         | 167 +++++
 include/linux/rpmsg/mtk_rpmsg.h               |  30 +
 16 files changed, 1606 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
 create mode 100644 drivers/remoteproc/mtk_common.h
 create mode 100644 drivers/remoteproc/mtk_scp.c
 create mode 100644 drivers/remoteproc/mtk_scp_ipi.c
 create mode 100644 drivers/rpmsg/mtk_rpmsg.c
 create mode 100644 include/linux/platform_data/mtk_scp.h
 create mode 100644 include/linux/rpmsg/mtk_rpmsg.h

-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
