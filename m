Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7E61C69FF
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 09:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q5Wambb4Pe5XU3WpWeKfBo6wpVIrXEX07V5Gnibx5FM=; b=U+fTt0Gz3mZLuF
	/JwZk1tb7unSp39BkzNVFxkkfABkfZhsqfodQSZmQasMvCDL92WFhjX1TEQewpiTAyPmtOr69W8k2
	nIYJyiYRahfdqikKHyVusbLi/wj5/UzuKUwrlKM/3gZ7B1Tiz01rxLFL4v2wKvX/9HkeeDkIyeMrF
	DbcZaHw1sl5HTLcAOuXZ2Dvj87+6JFKJqxRJDUmNIhiPV8cRlVHS1fzRHItPSodYPyJcoeQfkyE1L
	rVS+VaL/dzvCnjKueWoKZmSXq3kBb+tka8EJP5RE3NlPMLrX/WYO4DImXMu85RmhsxgmLm5T+paRs
	f05PqymNCyyx2CCUY21w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEOx-0002cO-IU; Wed, 06 May 2020 07:23:31 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEOv-0002bv-5k
 for linux-mediatek@lists.infradead.org; Wed, 06 May 2020 07:23:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id x77so574345pfc.0
 for <linux-mediatek@lists.infradead.org>; Wed, 06 May 2020 00:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tjwZKQ/MsOEoyrI1M9q54kkv4zKzlSrLRr8tdH7/u6g=;
 b=K+If0UPxcEszSaumR/NuK1/VhEn/oTDJddd23FqiNVVBAl32UGkD3t8Ahb2L7gAg3J
 c0BwnArx3xdme3E0yTCfDY0ITbByJRm4LJbTTpx9ASYux8G/7/spyYpAMKwpT5bhAMfW
 wO4gjMLL2G0vsIj4ftf3LKoYDTUnqKgV0rXAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tjwZKQ/MsOEoyrI1M9q54kkv4zKzlSrLRr8tdH7/u6g=;
 b=OtJXniy+jf07jlud5a3M8yh/GWoZdIGVQc7JZSTC8OHZgt7W3q2Sef+QsxpU0V6TU9
 ByLCDSGfLDtWNMNzNdCwT2uFqS4efQtg2NYnVnxQC4SZPVZMycBoffTh6umgS/zAA9Qy
 C+chkGMLd790ubWx2IOrRsaGzf6DIFAz+l9xrk0qwxK/irW4ZVDZzGkkPztIQtKhv4Up
 XPx10GBp1teNat10EHrtL200+XyOEZCPjDcMOSMPV4D20fv0JLgTclifUE2TNjZrd07A
 O4fTu6AgsGuoyR3zvMgDmtH+JFO7ci+2o8tYCY8OT6vJ9m/eJQtqeatKFmhLd0EDMwV1
 7TJQ==
X-Gm-Message-State: AGi0PuZ5lkarXqrNVOhCx1Gurf/FkhtZPDqO+9nuRV23pw4bYIHGUEzo
 sWkxdR5QuW6WJVQGHvwlmSCzCw==
X-Google-Smtp-Source: APiQypIUf1EiFl44Et+u6l1H3cnWCYGcfkquxMyqGWV5GjOWfcnttjRAbg2g3LDbGI2TFev31Xa/pw==
X-Received: by 2002:aa7:808e:: with SMTP id v14mr7000734pff.168.1588749808248; 
 Wed, 06 May 2020 00:23:28 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id x10sm993142pgq.79.2020.05.06.00.23.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 00:23:27 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: robh@kernel.org, gregkh@linuxfoundation.org, jslaby@suse.com,
 long.cheng@mediatek.com, changqi.hu@mediatek.com
Subject: [PATCH 0/3] add wakeup_irq for in-band wakeup support
Date: Wed,  6 May 2020 15:23:11 +0800
Message-Id: <20200506072314.112409-1-tientzu@chromium.org>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_002329_240641_3173B867 
X-CRM114-Status: UNSURE (   5.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Claire Chang <tientzu@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Since some uart controllers may be off in S3, add additional wakeup_irq
to support in-band wakeup.

Claire Chang (3):
  serdev: ttyport: add devt for tty port
  tty: serial_core: add wakeup_irq to support in-band wakeup
  uart: mediatek: move the in-band wakeup logic to core

 drivers/tty/serdev/serdev-ttyport.c |  2 ++
 drivers/tty/serial/8250/8250_core.c |  1 +
 drivers/tty/serial/8250/8250_mtk.c  | 24 +++---------------------
 drivers/tty/serial/serial_core.c    |  8 +++++---
 include/linux/serial_core.h         |  1 +
 5 files changed, 12 insertions(+), 24 deletions(-)

-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
