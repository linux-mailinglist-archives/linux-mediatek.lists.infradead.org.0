Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C84513AB2E
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Jan 2020 14:35:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mp2clQljv25/Olc1T2+Y4bVkt2c9MwldDRa4ve44BUI=; b=Y88+uWEhVDsle3
	YhQqVBfBGM57mTzR4uPZ5ni70dvFSL3inT6pio4xHSGLGJGpWqX8WG6iJ+o09m+sAMXu7WEJr+eg/
	B6Gmc+rI3j6JjxZvXqXwR9ZM6J0tbeqzjfdhAu8f8OIozWts8YVkIKi29HdgeXs1Wfgwmg6usO6x6
	rQkXNZ6oXmoDuI4UG8uESP5abdVxmKw8+tRj4heTj607Ht7Ye6sxrDK7AZCpZA+ZNU3bhO03KBDqn
	rJVNcyasjd50tAx4TsJD3vJjutWNBzR8XTwZSQyOsFc6whaCYsvTqV7bfNxrijn5W/JNrPTDccF1b
	48oFX4PW3ymFX3mBwExA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMLl-00084v-F3; Tue, 14 Jan 2020 13:35:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMLW-0006kx-FX; Tue, 14 Jan 2020 13:35:06 +0000
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
 [209.85.219.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41E742467D;
 Tue, 14 Jan 2020 13:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579008901;
 bh=0ghVVnTBZhNvg1AJ2oPToO73881dd/NHeITQTqTLWxI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=G/lFZEhdHe3ydclV+TmtrDs9QjTdwW6bZ31l3IhVdfAOwOCVu2AfDi94vmifvYmm1
 TXFehXUCRWmiGutK1ymNrnQtMUGERrIgLohMmfLFNu/px184/IyY6AmwqxILVhrygJ
 NZBCIjp3FRCbLPTESuVqZfBtOrfNLGNjTHthFOkU=
Received: by mail-qv1-f50.google.com with SMTP id dp13so5626145qvb.7;
 Tue, 14 Jan 2020 05:35:01 -0800 (PST)
X-Gm-Message-State: APjAAAXEWf7HHqtN3BMlNyw79D0FZhl8zaR0Uhmwg1eS0sBBLnSwQR4B
 eyKT6vJgFgj2YNALcOA8VEnk9C0kblD8EIL3c7U=
X-Google-Smtp-Source: APXvYqzOqlxC0uai1sE24Xuw2w8hBzEMT/71be1S1hw9KqGPL+bJoJZFBLpiVMGuBZvnEV9JeXw9j+9BEBZFKOwbSCs=
X-Received: by 2002:ad4:4dc3:: with SMTP id cw3mr20423625qvb.130.1579008900416; 
 Tue, 14 Jan 2020 05:35:00 -0800 (PST)
MIME-Version: 1.0
References: <20200114091836.19403-1-gtk_ruiwang@mediatek.com>
In-Reply-To: <20200114091836.19403-1-gtk_ruiwang@mediatek.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Tue, 14 Jan 2020 08:34:28 -0500
X-Gmail-Original-Message-ID: <CA+5PVA5aD+8Zc-e39eUtE=vPA_Dm5Z5_iXhFoYwpKstUssUVWQ@mail.gmail.com>
Message-ID: <CA+5PVA5aD+8Zc-e39eUtE=vPA_Dm5Z5_iXhFoYwpKstUssUVWQ@mail.gmail.com>
Subject: Re: pull request: linux-firmware: Update Mediatek MT8173 VPU firmware
To: gtk_ruiwang@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_053502_552827_D38BE626 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maoguang Meng <maoguang.meng@mediatek.com>,
 Alexandre Courbot <acourbot@chromium.org>, srv_heupstream@mediatek.com,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Longfei Wang <longfei.wang@mediatek.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Linux Firmware <linux-firmware@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 linux-mediatek@lists.infradead.org, PoChun.Lin@mediatek.com,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 4:18 AM <gtk_ruiwang@mediatek.com> wrote:
>
> Hi linux-firmware maintainers,
>
> The following changes since commit 67d4ff59bf3334895626cf165e508e9eb1846e24:
>
>   Mellanox: Add new mlxsw_spectrum firmware xx.2000.2714 (2020-01-07 09:08:25 -0500)
>
> are available in the Git repository at:
>
>   https://github.com/ruiwang-mtk/linux_fw_vpu_v1.1.3.git
>
> for you to fetch changes up to 7f3177d224ee7afdd6e36ed01a13f499d671e167:
>
>   mediatek: update MT8173 VPU firmware to v1.1.3 (2020-01-14 15:33:19 +0800)
>
> ----------------------------------------------------------------
> gtk_ruiwang (1):
>       mediatek: update MT8173 VPU firmware to v1.1.3
>
>  vpu_d.bin | Bin 2977008 -> 2977136 bytes
>  vpu_p.bin | Bin 131180 -> 131180 bytes
>  2 files changed, 0 insertions(+), 0 deletions(-)

Pulled the v1.1.3 branch and pushed out.  I'm assuming the pull
request is sufficient since it looks like the patch you sent
separately is the only thing in the pull request.  Let me know if
there is something else needed with the patch.

josh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
