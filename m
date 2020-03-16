Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AA8186A35
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Mar 2020 12:40:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+65VKXEGh0RnphN2q40r57FxLitiui1vFPyrC4zVr8=; b=bId18Hh1O/59eN
	Gd4vIc27WxTbq6LvoG8RI8FsZlIYtdpvU1dW9SHibV1ay6dE5jFvhpG5qbym72UGP2S9TPMtnYpJu
	9xxrEXFsUpJqWt14mASSYQx3GK3OZnSnZLbr+Ujew43G3mzk3HhLcXMbWK7ODRx9GRgSa1TV2auyy
	yLDD9rR4mc8UqptVp2062/mJUunFNG5pzfiAcRLY0m1nllyp5S3pLfT539md+dLGQiWnOcdmJzdbz
	iAkOHZkBG4/Zob6gxOsLdipT8C/TkHoNWmBxwC9ymshI4vFqqMONIa56/gthTjT3Z7iQjmeoj8s/7
	8yHI+gmtRu5uZ4buLBMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDo6V-0002HH-Oj; Mon, 16 Mar 2020 11:40:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDo6J-0001jI-Ah; Mon, 16 Mar 2020 11:40:08 +0000
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
 [209.85.166.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78F6420738;
 Mon, 16 Mar 2020 11:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584358806;
 bh=Ko27tvjSOxWw2c+7T+N9R5DU0h2C2x51xk/JtN4IhvE=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=WeLvgyLamuHAFXdtwDXFSF/6/Piw4dFGq8Pf9LSF5XqllMJnGQJxWw0Wq71qBh7WY
 orOPf5+N4Y0nJJY4OV0vPtwE5EHnLpjNZhO3THohB65YKk+f+U1vjdTXBphM2ZcOun
 DhkTOTbhaBW336jmYqOvh/14JCkrgnG07hFl3qqg=
Received: by mail-il1-f173.google.com with SMTP id c8so16184814ilm.1;
 Mon, 16 Mar 2020 04:40:06 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2Vtlt9PvvLT88utDRI96b8bqyYtInSK9SuK5kycCHqYWlqOEQA
 Ov5y+vQwIOrxVZd7BewccYxewzzMW/qYORxiYf0=
X-Google-Smtp-Source: ADFU+vuFgPhL5LIJn6Q6qWWAt8kgnZ/+G77NUpqLggYXbJzzJCCABWIIMJBEP4g7XAkLWWpU1XlUU9Fkhq+CNT5Cfig=
X-Received: by 2002:a92:5a88:: with SMTP id b8mr27282656ilg.206.1584358805937; 
 Mon, 16 Mar 2020 04:40:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200311033908.31960-1-erin.lo@mediatek.com>
In-Reply-To: <20200311033908.31960-1-erin.lo@mediatek.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 16 Mar 2020 07:39:55 -0400
X-Gmail-Original-Message-ID: <CA+5PVA5SQWD0DOeDU4kr9CYQhz6u=o5L3OinG_+2VUxsUEpvbw@mail.gmail.com>
Message-ID: <CA+5PVA5SQWD0DOeDU4kr9CYQhz6u=o5L3OinG_+2VUxsUEpvbw@mail.gmail.com>
Subject: Re: pull request: linux-firmware: Create Mediatek MT8183 SCP firmware
To: Erin Lo <erin.lo@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_044007_396117_9ADCAE05 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: menghui.lin@mediatek.com, Maoguang Meng <maoguang.meng@mediatek.com>,
 srv_heupstream@mediatek.com, drinkcat@google.com,
 Yunfei Dong <yunfei.dong@mediatek.com>, linux-remoteproc@vger.kernel.org,
 Linux Firmware <linux-firmware@kernel.org>, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, shawnku@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 11:40 PM Erin Lo <erin.lo@mediatek.com> wrote:
>
> The following changes since commit 0148cfefcbf98898ca65bb26d9d7d638b30e211d:
>
>   Merge https://github.com/rjliao-qca/qca-btfw (2020-03-02 08:08:15 -0500)
>
> are available in the Git repository at:
>
>   https://github.com/erinlo/linux_fw_scp v12573.77
>
> for you to fetch changes up to a52150d8e1fe65994464b15ea162bdc89ba61ce8:
>
>   mediatek: Add mt8183 SCP firmware (2020-03-11 10:36:45 +0800)
>
> ----------------------------------------------------------------
> Erin Lo (1):
>       mediatek: Add mt8183 SCP firmware
>
>  mediatek/mt8183/scp.img | Bin 0 -> 1027104 bytes
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  create mode 100644 mediatek/mt8183/scp.img

This file needs to be added to WHENCE.  Can you adjust the commit to add it?

josh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
