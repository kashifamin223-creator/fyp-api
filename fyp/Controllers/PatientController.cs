using Common;
using DAL;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
namespace fyp.Controllers
{
    [ApiController]
    public class PatientController : ControllerBase
    {
        private readonly InternDAL _dal;
        private readonly GraduateDAL _Gdal;
        private readonly TraumaDAL _Tdal;
        private readonly HarassmentDAL _Hdal;
        private readonly ChildDAL _Cdal;
        private readonly OldDAL _Odal;
        private readonly EmployedDAL _Edal;
        private readonly UnemployedDAL _Udal;
        private readonly ParentsDAL _Pdal;
        private readonly SignupDAL _Sdal;
        private readonly LoginDAL _Ldal;


        public PatientController(InternDAL dal, GraduateDAL Gdal, TraumaDAL Tdal, HarassmentDAL Hdal, ChildDAL Cdal, OldDAL Odal, EmployedDAL Edal, UnemployedDAL Udal, ParentsDAL Pdal,SignupDAL Sdal, LoginDAL Ldal)
        {
            _dal = dal;
            _Gdal = Gdal;
            _Tdal = Tdal;
            _Hdal = Hdal;
            _Cdal = Cdal;
            _Odal = Odal;
            _Edal = Edal;
            _Udal = Udal;
            _Pdal = Pdal;
            _Sdal = Sdal;
            _Ldal = Ldal;

        }

        [HttpPost]
        [Route("api/InternForm")]
        public IActionResult InternForm([FromBody] Intern intern)
        {
            if (intern == null)
            {
                return BadRequest("Invalid Data");
            }
            bool iSaved = _dal.SaveIntern(intern);
            if (iSaved)
            {
                return Ok(intern); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Graduate//========//========//========//

        [HttpPost]
        [Route("api/SaveGraduate")]
        public IActionResult SaveGraduate([FromBody] Graduate graduate)
        {
            bool result = _Gdal.SaveGraduate(graduate);

            if (result)
                return Ok("Graduate Saved Successfully");
            else
                return BadRequest("Error Saving Graduate");
        }
        
        //OldAge//========//========//==========//

        [HttpPost]
        [Route("api/OldForm")]
        public IActionResult OldForm([FromBody] Old old)
        {
            if (old == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = _Odal.InsertOld(old);
            if (iSaved)
            {
                return Ok(old); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Employed//======//======//=======//

        
        [HttpPost]
        [Route("api/EmployedForm")]
        public IActionResult EmployedForm([FromBody] Employed employed)
        {
            if (employed == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = _Edal.InsertEmployed(employed);
            if (iSaved)
            {
                return Ok(employed); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Unemployed//========//==========//=========//

        [HttpPost]
        [Route("api/UnemployedForm")]
        public IActionResult UnemployedForm([FromBody] Unemployed unemployed)
        {
            if (unemployed == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = _Udal.SaveUnemployed(unemployed);
            if (iSaved)
            {
                return Ok(unemployed); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Parents//=========//=========//=========//

        [HttpPost]
        [Route("api/ParentsForm")]
        public IActionResult ParentsForm([FromBody] Parents parents)
        {
            if (parents == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = _Pdal.InsertParents(parents);
            if (iSaved)
            {
                return Ok(parents); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Trauma//==========//===========//===========//

        [HttpPost]
        [Route("api/TraumaForm")]
        public IActionResult TraumaForm([FromBody] Trauma trauma)
        {
            if (trauma == null)
            {
                return BadRequest("Invalid Data");
            }
            bool iSaved = _Tdal.SaveTrauma(trauma);
            if (iSaved)
            {
                return Ok(trauma); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Harassment//=========//=========//=========//

        [HttpPost]
        [Route("api/HarassmentForm")]
        public IActionResult HarassmentForm([FromBody] Harassment harassment)
        {
            if (harassment == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = _Hdal.SaveHarassment(harassment);
            if (iSaved)
            {
                return Ok(harassment); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Child//=========//=========//=========//

        [HttpPost]
        [Route("api/ChildForm")]
        public IActionResult ChildForm([FromBody] Child child)
        {
            if (child == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = _Cdal.SaveChild(child);
            if (iSaved)
            {
                return Ok(child); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Signup//=========//=========//=========//

        [HttpPost]
        [Route("api/SignupForm")]
        public IActionResult SignupForm([FromBody] Signup signup)
        {
            if (signup == null)
            {
                return BadRequest("Invalid Data");
            }

            var signupResult = _Sdal.InsertSignup(signup);
            bool iSaved = signupResult.IsSaved;
            if (iSaved)
            {
                return Ok(signup); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }

        }

        //Login//=========//=========//=========//

        [HttpPost]
        [Route("api/LoginForm")]
        public IActionResult LoginForm([FromBody] Login login )
        {
            if (login == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = _Ldal.SaveLogin(login);
            if (iSaved)
            {
                return Ok(login); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }

        }

    }

}
