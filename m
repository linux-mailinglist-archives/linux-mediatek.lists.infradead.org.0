Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E632C1682F4
	for <lists+linux-mediatek@lfdr.de>; Fri, 21 Feb 2020 17:13:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzurIWRvmuFfhGnfyUKdMKMWw21BaSjRRyqqrZPtTfY=; b=RUusWdsEXFHtae
	jEv8DsIO+oJvL1FCs5GppA9Ky0TwQRUP5WdMKH3sU1SkTBjwGlsZ8FcFmYZ4tTmh3IjXq65DhM+rc
	wcMfa8gD5lvjr2AzlgCtliVeniHKYgJGGXj6vRaKUtdALUW/2v/I2xR9jw93pe6LHlS3l0bR95nVb
	/aF9YE4USQG+gvhXp+jAbKX5yOF9lmM9fjKw/ASqTVinFmQziuFvdugJuxhj5bzvdp3SmZJpitIqp
	Y/eGgDRaY6d1jBKM+Z00KOylMt1ZHmRuqKd/LCTL3wrk8BnOCPf/vQtyC08WZKD5xUOywQG8pYoGb
	6rGOEDCqF5PkAB/KxRaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5AvJ-0005Vz-Ee; Fri, 21 Feb 2020 16:13:05 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5AvG-0005VA-Es
 for linux-mediatek@lists.infradead.org; Fri, 21 Feb 2020 16:13:03 +0000
Received: by mail-lj1-x242.google.com with SMTP id n18so2737770ljo.7
 for <linux-mediatek@lists.infradead.org>; Fri, 21 Feb 2020 08:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LqTxue78m0VGtZxl2013S2ddlAIfciqoVst56iF7SGs=;
 b=BvOCY4WqvKvSmbgZTbzrZE34qr4LqSZ43ORPgG6FiaueJHCu06j2vI/i4JmgeO0n7v
 Rbc1u6pnDAuBjtYyd7Nox+Oh9KUmMWJuAZnfXeaXqgabNrQ324jbS5Bkb9BDWWkQ9nuf
 Xybhnbw9C03wwI5svyClubx5PE2EFuvtMMSyd5nvcyUpMolfbLHgSTWPdtHfTEMsszWh
 WvW8HCo9EHW7FZ6o69Lh3YBJhepdESVmYcApE1j07CUs73iEnPQPgddW/ASD01W8k+3o
 uIov3ZG0emYKmHEo9CdEaDqVA79Iy8r5CaB6o7YxuzLi6GvPewcHcNNIA1QMKVf0+x6E
 drmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LqTxue78m0VGtZxl2013S2ddlAIfciqoVst56iF7SGs=;
 b=e93oHvZMmD7py4IqA6M3uLIjWagemWqYsRn+QS7iEbrieC2R0pbFbvwJV0ycH0CP7c
 x9qEdFMvysuoGdXYtgUIauMlONiea9vLdTtzXTAr0FeM5mrLKGzNaJHwb5Q6EcNhij+g
 XmVvVFeQIJFfYCHQJlcBDI0d1ZM1zMT1Ftcs5KDVN/t7jjna/D3PFj27cvCV1GEFiKOT
 v0YuEDQjDh6Nj18xnWRN2OaiTIXcs2TcLxEVDYBEAhjemBheQaGpAW1HkE1wMzmHxifq
 Mf8CDZgvTlubMmJtLvEYNLGQUDr8VYIqUlKBnzlytJaNb/um9KaJ8vnQGmLeySRCkiJE
 P21A==
X-Gm-Message-State: APjAAAXEDlBMLTndF885Drfo1IyhS+HNw7RoLbOtgWIU1xVxExFeEwoj
 p0FH9bj7xVS7kb5ejfIhKk42IDXjJhOfXv1AEfnNsA==
X-Google-Smtp-Source: APXvYqx1fG7Lz4lhwSO2oqygCFLqCAUK7qlx2swfnXZlid8cl7yxcjFZKc5d8xBtqEe+Hg9BDPxLjIE2diqSC+Ew0Lw=
X-Received: by 2002:a2e:7d0c:: with SMTP id y12mr23401405ljc.39.1582301580775; 
 Fri, 21 Feb 2020 08:13:00 -0800 (PST)
MIME-Version: 1.0
References: <20200218055247.74s2xa7veqx2do34@kili.mountain>
In-Reply-To: <20200218055247.74s2xa7veqx2do34@kili.mountain>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 17:12:49 +0100
Message-ID: <CACRpkdZeFrmA=ZwSNxY0=J6BpASkTrZLVQXBoenZKXFRS3xJPA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: mediatek: Fix some off by one bugs
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_081302_503294_1C9037B2 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Sean Wang <sean.wang@kernel.org>, kernel-janitors@vger.kernel.org,
 Light Hsieh <light.hsieh@mediatek.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 6:55 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:

> These comparisons should be >= instead of > to prevent accessing one
> element beyond the end of the hw->soc->pins[] array.
>
> Fixes: 3de7deefce69 ("pinctrl: mediatek: Check gpio pin number and use binary search in mtk_hw_pin_field_lookup()")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Patch applied as a non-critical fix with Matthias' Review tag.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
