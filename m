Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B881B142E38
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 Jan 2020 15:57:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p4XSClVcSQdZ3iPbzoB0DS920kvLnaYG2ZCUbvBdsGQ=; b=rdayAsaG240lcMOK11YGAA/6h
	G0DUJ3OyUluAt3b4jRqQzAiOIvG/B7uMX9rprPK1sgg5qchcWXurC69VEE23S5AWTGkSouODvzg3T
	RmJIklw3k+IVWHWCPAEhRbMhOgk8WW16gay7STWCVHOBt8ak3/7sdy0ZBZyCUS094boqb27Z+CsXM
	v74gP1z/pX6XTVKuJI4y69e5Qiaf928CUwK3XYzqH4hiZrs4NwlKgLWZztUUAh6tkbkLR9ph2mikD
	c6Br0nIjRFssx9rOLK033x/Ge1ULz6wQOUaRiP61/I0FjiB84TGEN1fp/8xXnwyJ6VzQBBQIIOVW/
	lNMdHKXSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYUk-00007R-55; Mon, 20 Jan 2020 14:57:38 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYU6-0007sk-1s; Mon, 20 Jan 2020 14:57:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D5B61AD00;
 Mon, 20 Jan 2020 14:56:53 +0000 (UTC)
Date: Mon, 20 Jan 2020 15:56:48 +0100
From: Michal =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>
To: Suren Baghdasaryan <surenb@google.com>
Subject: Re: [PATCH 2/3] cgroup: Iterate tasks that did not finish do_exit()
Message-ID: <20200120145635.GA30904@blackbody.suse.cz>
References: <20200116043612.52782-1-surenb@google.com>
 <20200117151533.12381-1-mkoutny@suse.com>
 <20200117151533.12381-3-mkoutny@suse.com>
 <20200117172806.GK2677547@devbig004.ftw2.facebook.com>
 <CAJuCfpFqEUVFXsjD8XcCKsGXKTf72r0Ek5_1yqu_k5UZAssKTw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJuCfpFqEUVFXsjD8XcCKsGXKTf72r0Ek5_1yqu_k5UZAssKTw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_065658_234316_D06B0B05 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: JeiFeng Lee <linger.lee@mediatek.com>, Tom Cherry <tomcherry@google.com>,
 shuah@kernel.org, LKML <linux-kernel@vger.kernel.org>, matthias.bgg@gmail.com,
 Li Zefan <lizefan@huawei.com>, linux-mediatek@lists.infradead.org,
 linux-kselftest@vger.kernel.org, Johannes Weiner <hannes@cmpxchg.org>,
 Tejun Heo <tj@kernel.org>, cgroups mailinglist <cgroups@vger.kernel.org>,
 alex.shi@linux.alibaba.com, kernel-team <kernel-team@android.com>,
 Roman Gushchin <guro@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7482925953338929362=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============7482925953338929362==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IiVenqGWf+H9Y6IX"
Content-Disposition: inline


--IiVenqGWf+H9Y6IX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 17, 2020 at 10:41:29AM -0800, Suren Baghdasaryan <surenb@google.com> wrote:
> Tested-by: Suren Baghdasaryan <surenb@google.com>
Thanks.

> > Yeah, this looks fine to me.  Any chance you can order this before the
> > clean up so that we can mark it for -stable.
> +1 for reordering. Makes it easier to backport.
The grounds still need to be prepared for css_task_iter to store
additional information. Let me see how the preceding changes can be
minimized.

Michal

--IiVenqGWf+H9Y6IX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEEoQaUCWq8F2Id1tNia1+riC5qSgFAl4lv7AACgkQia1+riC5
qSjnlQ//WGljOTcfv0L0yWBKqXL3O0PLyuPdsN+7v3R9YLMlZy1NE0YMJjm2cbii
cC0lB8Lr4kg8R1IuUh8Iks+eIFNGMmBRzxChxzm4DTEPkB6i775f67ELwxWw6xFD
H/oHvQKfvQUt3r/vVfyG8bRsJvpLjVViiRq1fy6SkX0UgVuDcchKFYOUaeaJAcB/
d7JRVvtvyV11ruAKx7nK+GTBhCLCdgcqh4ZTKEc2dtB7CWp7JCHKbyw5Y/sic/zc
XDilupblbFI6zerlS6ojzptQbuMPdZ09dG/e2xJK9K/crVaE837opkVISg0MPzrc
eDdXKz3j5P/koE5nvwfv+GCuZ1hIqn8asmmrn6hwl2RMeb0I6ah4hVYTEbPJ/d8v
wB9csLCQDFJx/meZfuESumssrCofS++SQfsQR43lR8oilNefg2j+EZgcOHOfVYY/
iHu8M3RR1ClosYvjNIs0sU/i+9s2jGZpCfA0P0WWbSLPMvMSt/Gx+TE8iiHAaztb
G/lCm1cvWIEWcXbGvRG91YjKDWMxqTpV9ZceIyEMKQudqpYyTFQr4QBhdE+djb1r
e6+88ykq8nYxT9G1SDcYCA03OyouKIm5TBfObcdvZptAh2szrI9cATC3lEz/Dj4f
cfvdIA0PwZgLaccFAIc75NAY6IQJhcK/t6rqsE2fxiEofvrfiXI=
=VU1C
-----END PGP SIGNATURE-----

--IiVenqGWf+H9Y6IX--


--===============7482925953338929362==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============7482925953338929362==--

